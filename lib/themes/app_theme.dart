import 'package:flutter/material.dart';

class AppTheme {
  static final Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: AppBarTheme(
          color: primary, elevation: 0, centerTitle: true),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom( primary: primary)
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primary,
          // Bordes
          shape: const StadiumBorder(),
          elevation: 0
        )
      ),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        // Habilitado
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        )

      )
  );

  static final Color primaryDark = Colors.deepPurple;
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryDark,
      appBarTheme: AppBarTheme(
          color: primaryDark, elevation: 0, centerTitle: true),
      scaffoldBackgroundColor: Colors.black,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom( primary: primaryDark)
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryDark,
        elevation: 5
      )
  );
}
