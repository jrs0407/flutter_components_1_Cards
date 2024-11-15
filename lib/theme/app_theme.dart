import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: primary,

      //AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        iconTheme: IconThemeData(color: Colors.white)
      ),
      //ListTile Theme
      listTileTheme: const ListTileThemeData(
        iconColor: primary,
      ),
      //TextButtonTheme
      textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary)
      ),

      //FloattingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      shape: StadiumBorder(),
      elevation: 5,
      foregroundColor: Colors.white
      ),
      
      );
}
