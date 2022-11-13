import 'package:alastor/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlastorTheme
{
    static ThemeData LightTheme()
    {
      return ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.black,

          textTheme: TextTheme(
            headline1: GoogleFonts.inriaSans(fontSize: 28,color: Colors.black),
            headline2: GoogleFonts.inriaSans(fontSize: 16,color: Colors.white),
            bodyText1: GoogleFonts.inriaSans(fontSize: 11,color: AlastorColors.grey1)
          )
      );
    }
    static ThemeData DarkTheme()
    {
      return ThemeData(
          scaffoldBackgroundColor: Colors.black,
          primaryColor: Colors.white,
          textTheme: TextTheme(
              headline1: GoogleFonts.inriaSans(fontSize: 28,color: Colors.white),
              headline2: GoogleFonts.inriaSans(fontSize: 16,color: Colors.black),
              bodyText1: GoogleFonts.inriaSans(fontSize: 11,color: AlastorColors.grey1)
          )
      );
    }

}