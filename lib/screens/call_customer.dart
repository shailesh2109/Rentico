import 'package:flutter/material.dart';
import 'package:rentico/screens/home_screen.dart';
import 'package:rentico/utils/helper.dart';
import 'package:rentico/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class CallCustomer extends StatefulWidget {
  const CallCustomer({super.key});

  @override
  State<CallCustomer> createState() => _CallCustomerState();
}

class _CallCustomerState extends State<CallCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar( elevation: 1,
        
        backgroundColor: MyTheme.cream,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>homeScreen())), icon: Icon(Icons.arrow_back_ios)),
        title: Text("          Call Customer",style: TextStyle(color: Color.fromARGB(255, 66, 66, 66)),),
      
      ),
      backgroundColor: MyTheme.cream,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(16, 16, 16, 6),
          child: Container(
            padding: EdgeInsets.fromLTRB(16, 5, 16, 0),
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
                    "Bajaj Pulsar 150".text.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                    Row(
                children: [
                  Expanded(
                    child: Text("DL62DV6166",style: TextStyle(color: Helper.textColor,fontSize: 18),),
                  ),
                  Container(
                    decoration: BoxDecoration(color: MyTheme.renico_blue,
                      borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.call,color: Colors.white,),
                    
                  ).wh(50, 50),
                  
                ],
              ),
                    "".text.make(),
                    
                  ],
                ),
          ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(16, 16, 16, 6),
          child: Container(
            padding: EdgeInsets.fromLTRB(16, 5, 16, 0),
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
                    "Hero XPulse 200 4V".text.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                    Row(
                children: [
                  Expanded(
                    child: Text("DL62DV6169",style: TextStyle(color: Helper.textColor,fontSize: 18),),
                  ),
                  Container(
                    decoration: BoxDecoration(color: MyTheme.renico_blue,
                      borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.call,color: Colors.white,),
                    
                  ).wh(50, 50),
                  
                ],
              ),
                    "".text.make(),
                    
                  ],
                ),
          ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(16, 16, 16, 6),
          child: Container(
            padding: EdgeInsets.fromLTRB(16, 5, 16, 0),
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
                    "Bajaj Pulsar NS160".text.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                    Row(
                children: [
                  Expanded(
                    child: Text("DL62SJ6328",style: TextStyle(color: Helper.textColor,fontSize: 18),),
                  ),
                  Container(
                    decoration: BoxDecoration(color: MyTheme.renico_blue,
                      borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.call,color: Colors.white,),
                    
                  ).wh(50, 50),
                  
                ],
              ),
                    "".text.make(),
                    
                  ],
                ),
          ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(16, 16, 16, 6),
          child: Container(
            padding: EdgeInsets.fromLTRB(16, 5, 16, 0),
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
                    "TVS ScootyPep Plus".text.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                    Row(
                children: [
                  Expanded(
                    child: Text("DL16UV9273",style: TextStyle(color: Helper.textColor,fontSize: 18),),
                  ),
                  Container(
                    decoration: BoxDecoration(color: MyTheme.renico_blue,
                      borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.call,color: Colors.white,),
                    
                  ).wh(50, 50),
                  
                ],
              ),
                    "".text.make(),
                    
                  ],
                ),
          ),
          ),
        ],
      )
    );
  }
}