import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:rentico/model/api_model.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;


class ApiTesting extends StatefulWidget {
  const ApiTesting({super.key});

  @override
  State<ApiTesting> createState() => _ApiTestingState();
}

class _ApiTestingState extends State<ApiTesting> {
  final url='https://jsonplaceholder.typicode.com/posts';
  List<Apimodel> newList=[];
  Future<List<Apimodel>>loadData() async{
    await Future.delayed(Duration(seconds: 2));

    final response=await http.get(Uri.parse(url));
    final data=jsonDecode(response.body.toString());
    newList=List.from(data).map<Apimodel>((e) => Apimodel.fromMap(e)).toList();
    if(response.statusCode==200){
      return newList;
    }
    else{
      return newList;
    }
  }
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
                print(newList.length);
                return ListView.builder(
                  itemCount: newList.length,
                  itemBuilder: (context,index){
                  return Text(newList[3].title.toString());
                });
              }             
            }))
        ],
      ),

    );
  }
}