import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/themes.dart';



class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rentico"),
      ),
      
      body: SafeArea(
        child: Container(
          child: 
          Column(
            children: [
              Container(
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 202, 202, 202),
                      offset: Offset(0.0, 1.0),
                      blurRadius: 4.0,
                    )
                  ]
                ),
                child: 
                Column(
                  children: [
                    
                    Row(
                      children: [
                        Expanded(child:  "Make a booking".text.bold.xl.make(),
                         ),
                         Icon(Icons.arrow_forward_ios)
                      ],
                      
                    ),
                    SizedBox(height: 20,),
                    "Enter all the details and save all the data of your booking.".text.make()
                  ],
                ).p(12)
                
              ).h(120),

              SizedBox(height: 30,),


              Container(
                 decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 202, 202, 202),
                      offset: Offset(0.0, 1.0),
                      blurRadius: 4.0,
                    )
                  ]
                ),
                
                child: 
                Column(
                  children: [
                    
                    Row(
                      children: [
                        Expanded(child:  "Receive a vehicle".text.bold.xl.make(),
                        
                        
                         ),
                         Icon(Icons.arrow_forward_ios)
                        
                       
                      ],
                      
                    ),
                    SizedBox(height: 20,),
                    "Enter all the details and save all the data of your received vehicle.".text.make()
                  ],
                ).p(12)
              ).h(120),
            ],
          ),
        ).px16().py(32)
      ),
      endDrawer: Drawer(),
    );
  }
}