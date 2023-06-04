import 'package:flutter/material.dart';
import 'package:rentico/screens/home_screen.dart';
import 'package:rentico/screens/splash_screen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),)
  );
}