import 'package:flutter/material.dart';
import 'package:rentico/screens/home_screen.dart';
import 'package:velocity_x/velocity_x.dart';


class BookingHistory extends StatelessWidget {
  const BookingHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>homeScreen())), icon: Icon(Icons.arrow_back_ios)),
        automaticallyImplyLeading: false,
        title: Text("        Booking History",style: TextStyle(color: Color.fromARGB(255, 66, 66, 66))),
      ),
      body: Column(
        children: [Container(
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
                  
                ).h(120).p(16),
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
                  
                ).h(120).p(16),
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
                  
                ).h(120).p(16),
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
                  
                ).h(120).p(16),

        ],
      ),
    );
  }
}