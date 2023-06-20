import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyTheme{
  static ThemeData lightTheme(BuildContext context) =>ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Color(0xfff5f5f5),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        
      )
    );

  static ThemeData darkTheme(BuildContext context)=>ThemeData(
    brightness: Brightness.dark

  );

  static Color darkBlue=Color(0xff403b58);
  static Color cream=Color(0xfff5f5f5);
  static Color renico_blue=Color.fromRGBO(11, 38, 135, 1);


    }

