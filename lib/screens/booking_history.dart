import 'package:flutter/material.dart';
import 'package:rentico/screens/home_screen.dart';
import 'package:rentico/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class BookingHistory extends StatefulWidget {
  const BookingHistory({super.key});

  @override
  State<BookingHistory> createState() => _BookingHistoryState();
}

class _BookingHistoryState extends State<BookingHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.cream,
      appBar: AppBar(
        elevation: 1,
        
        backgroundColor: MyTheme.cream,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>homeScreen())), icon: Icon(Icons.arrow_back_ios)),
        title: Text("        Booking History",style: TextStyle(color: Color.fromARGB(255, 66, 66, 66)),),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
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
                  "13 February, 2023".text.make(),
                  SizedBox(height: 20,),
                  "Bajaj Pulsar 150".text.bold.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(child: "DL62DV6166".text.bold.xl.make()),
                      Container(padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(198, 198, 198, 0.741),
                          borderRadius: BorderRadius.circular(10)),
                        child: "  Pending  ".text.color(Color.fromARGB(255, 66, 66, 66)).make(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
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
                  "13 February, 2023".text.make(),
                  SizedBox(height: 20,),
                  "Bajaj Pulsar 150".text.bold.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(child: "DL62DV6166".text.bold.xl.make()),
                      Container(padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(198, 198, 198, 0.741),
                          borderRadius: BorderRadius.circular(10)),
                        child: "  Pending  ".text.color(Color.fromARGB(255, 66, 66, 66)).make(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
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
                  "13 February, 2023".text.make(),
                  SizedBox(height: 20,),
                  "Bajaj Pulsar 150".text.bold.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(child: "DL62DV6166".text.bold.xl.make()),
                      Container(padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(125, 206, 157, 0.722),
                          borderRadius: BorderRadius.circular(10)),
                          child: "  Received  ".text.color(Color.fromRGBO(0, 209, 73, 0.722)).make(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
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
                  "13 February, 2023".text.make(),
                  SizedBox(height: 20,),
                  "Bajaj Pulsar 150".text.bold.xl2.color(Color.fromARGB(255, 66, 66, 66)).make(),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(child: "DL62DV6166".text.bold.xl.make()),
                      Container(padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(125, 206, 157, 0.722),
                          borderRadius: BorderRadius.circular(10)),
                        child: "  Received  ".text.color(Color.fromRGBO(0, 209, 73, 0.722)).make(),
                      )
                    ],
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}