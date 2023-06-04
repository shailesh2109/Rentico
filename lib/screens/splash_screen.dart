import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rentico/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Timer(const Duration(seconds: 2), () async{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const homeScreen()));
    });
     super.initState();
  }




  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff00008A),
        child: Padding(padding: const EdgeInsets.all(30),
        child: Center(child: Image.asset("assets/images/splashLogo.png")),
        )
      ),
    );
  }
}