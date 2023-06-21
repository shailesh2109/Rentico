import 'package:flutter/material.dart';
import 'package:rentico/screens/home_screen.dart';
import 'package:rentico/utils/helper.dart';
import 'package:rentico/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactSupport extends StatelessWidget {
  const ContactSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>homeScreen())), icon: Icon(Icons.arrow_back_ios)),
        automaticallyImplyLeading: false,
        title: Text("       Contact Support",style: TextStyle(color: Color.fromARGB(255, 66, 66, 66))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          
          children: [
            Text("Contact for Support",style: TextStyle(color: Color.fromARGB(255, 66, 66, 66),fontSize: 25)),
            SizedBox(height: 30,),
            Container(
             decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 202, 202, 202),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 10.0,
                      )
                  
                ]
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("renticosupport123@gmail.com",style: TextStyle(color: Helper.textColor,fontSize: 18),),
                    ),
                  ),
                  Container(
                    child: Icon(Icons.message_outlined,color: Colors.white,),
                    color: Color(0xff2F50A9),
                  ).wh(50, 50),
                  
                ],
              ),
              
              
            ),
            SizedBox(height: 20,),
            Container(
             decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 202, 202, 202),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 10.0,
                      )
                  
                ]
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("+ 91 2638467180",style: TextStyle(color: Helper.textColor,fontSize: 18),),
                    ),
                  ),
                  Container(
                    child: Icon(Icons.call,color: Colors.white,),
                    color: Color(0xff2F50A9),
                  ).wh(50, 50),
                  
                ],
              ),
              
              
            )
          ],
        ),
      ),
    );
  }
}