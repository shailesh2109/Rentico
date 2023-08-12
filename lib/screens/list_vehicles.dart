import 'package:flutter/material.dart';
import 'package:rentico/screens/home_screen.dart';
import 'package:rentico/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class ListVehicles extends StatefulWidget {
  const ListVehicles({super.key});

  @override
  State<ListVehicles> createState() => _ListVehiclesState();
}

class _ListVehiclesState extends State<ListVehicles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( elevation: 1,
        
        backgroundColor: MyTheme.cream,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>homeScreen())), icon: Icon(Icons.arrow_back_ios)),
        title: Text("          List of Vehicles",style: TextStyle(color: Color.fromARGB(255, 66, 66, 66)),),
      
      ),
      backgroundColor: MyTheme.cream,
      body:  Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
            child: Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                
                decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 202, 202, 202),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 4.0,
                          )
                        ],
                  color:Colors.white ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Bajaj Pulsar 150".text.bold.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        "DL62DV6166".text.make(),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
            child: Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                
                decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 202, 202, 202),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 4.0,
                          )
                        ],
                  color:Colors.white ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Hero XPulse 200 4V".text.bold.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        "DL62DV6169".text.make(),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
            child: Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                
                decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 202, 202, 202),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 4.0,
                          )
                        ],
                  color:Colors.white ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Bajaj Pulsar NS160".text.bold.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        "DL62SJ6328".text.make(),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
            child: Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                
                decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 202, 202, 202),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 4.0,
                          )
                        ],
                  color:Colors.white ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "TVS ScootyPep Plus".text.bold.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        "DL16UV9273".text.make(),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}