import 'package:flutter/material.dart';
import 'package:rentico/screens/booking_form1.dart';
import 'package:rentico/screens/splash_screen.dart';

class MyRoutes{
  static bookingForm1(BuildContext context, Widget page)=>
   Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingForm1()));

   static SplashScreen(BuildContext context,Widget page)=>
   Navigator.push(context, MaterialPageRoute(builder: (context)=>page));

   static HomeDetails(BuildContext context,Widget page)=>
   Navigator.push(context, MaterialPageRoute(builder: (context)=>page));

   static Receive(BuildContext context, Widget page)=>
   Navigator.push(context, MaterialPageRoute(builder: (context)=>page));
}