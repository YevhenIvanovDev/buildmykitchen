import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData = ThemeData(
  primaryColor: KitchenColors.ink,
  disabledColor: KitchenColors.lightBlueGrey,
  fontFamily: 'Lexend Deca',
  textTheme: TextTheme(
      button: GoogleFonts.lexendDeca(
        color: KitchenColors.lime,
      ),
      //Headers
      headline1: GoogleFonts.lexendDeca(
          color: KitchenColors.corp,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          textStyle: const TextStyle(fontFamily: 'Lexend Deca')),
      // Form
      headline2: GoogleFonts.lexendDeca(
        fontSize: 12,
        color: Colors.blueGrey,
      )),
);
