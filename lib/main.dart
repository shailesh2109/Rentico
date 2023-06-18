import 'package:flutter/material.dart';
import 'package:rentico/screens/home_screen.dart';
import 'package:rentico/screens/splash_screen.dart';
import 'package:rentico/widgets/themes.dart';

void main(){

  runApp(MyApp());
    
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      home: SplashScreen(),
    );
  }
}