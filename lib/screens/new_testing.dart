import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:rentico/model/api_model.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;


class newTesting extends StatefulWidget {
  const newTesting({super.key});

  @override
  State<newTesting> createState() => _newTestingState();
}

class _newTestingState extends State<newTesting> {
  @override
  void initState(){
    super.initState();
    loadData();
  }
  GlobalKey<FormState>formkey=GlobalKey<FormState>();
  List<Apimodel>finalList=[];
  Future<List<Apimodel>>loadData()async{
    final response=await http.get(Uri.parse("https://fakestoreapi.com/products"));
    final data=jsonDecode(response.body.toString());
    finalList=List.from(data).map<Apimodel>((e) => Apimodel.fromMap(e)).toList();
    if(response.statusCode==200){
      return finalList;
    }
    else{
      return finalList;
    }
  }
  void send(String title)async{
    
    Response put=await post(
      Uri.parse("https://fakestoreapi.com/products"),
      body:{
        'title' : title,
      }
    );
    if(put.statusCode==200){
      print("sucessful");
      var showId=jsonDecode(put.body.toString());
      print(showId);
    }
    else{
      print("error");
    }

  }
  String textValue="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Api"),),
      body: Column(
        children: [
          Expanded(child: FutureBuilder(
            future: loadData(),
            builder: (context,snapshot){
              if(!snapshot.hasData){
                return Text("Loading");

              } else{
                print(finalList.length);
                return ListView.builder(
                  itemCount: finalList.length,
                  itemBuilder: (context,index){
                  return Text(finalList[3].title.toString());
                });
              }             
            })),
            Expanded(
              child: Column(
                children: [
                  Form(
                    key: formkey,
                    child: TextFormField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if(value==null||value.isEmpty){
                          return "Enter value";
                        }else{
                          textValue=value;
                        }
                      },
                    ),
                  ),
                  InkWell(
                    onTap: () {
                     send(textValue);
                    },
                    child: Container(
                      color: Colors.blue,
                      child: Text("Send"),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),

    );
  }
}