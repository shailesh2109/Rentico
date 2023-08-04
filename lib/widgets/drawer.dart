import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentico/screens/booking_history.dart';
import 'package:rentico/screens/call_customer.dart';
import 'package:rentico/screens/contact_support.dart';
import 'package:rentico/utils/helper.dart';
import 'package:rentico/utils/routes.dart';
import 'package:rentico/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Helper.rentico,
      elevation: 1,
      automaticallyImplyLeading: false,
      ),
      
      
      body: Container(
        color: MyTheme.cream,
        
        child: ListView(
          children: [
            ListTile(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingHistory())),
                leading: Icon(
                  Icons.history),
                  title: Text("Booking History",textScaleFactor: 1.2,style: TextStyle(color: Color.fromARGB(255, 66, 66, 66)),),
              ),
             ListTile(
                leading: Icon(
                  CupertinoIcons.list_bullet,),
                  title: Text("List Vehicles",textScaleFactor: 1.2,style: TextStyle(color: Color.fromARGB(255, 66, 66, 66)),),
              ),
               ListTile(
                onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>CallCustomer())) ,
                leading: Icon(
                  Icons.call),
                  title: Text("Call Customer",textScaleFactor: 1.2,style: TextStyle(color: Color.fromARGB(255, 66, 66, 66)),),
              ),
              ListTile(
                onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactSupport())) ,
                leading: Icon(
                  CupertinoIcons.question_circle),
                  title: Text("Contact Support",textScaleFactor: 1.2,style: TextStyle(color: Color.fromARGB(255, 66, 66, 66)),),
              ),
          ],
        ),
      ).py16()

    );
  }
}