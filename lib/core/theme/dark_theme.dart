import 'package:flutter/material.dart';
import 'package:todolist1/core/theme/theme.dart';
import 'element/text_theme.dart';

ThemeData DarkThemeData() {
  return ThemeData(
      primaryColor: mainColor,
      iconTheme: const IconThemeData(color: lightColor,size: 30),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkColor,
      textTheme: CustomTextTheme.textThemeDark,
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: lightColor,
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: darkColor,
        iconTheme: const IconThemeData(color: mainColor,size: 30),
        elevation: 0,
        centerTitle: true,
      ),
      bottomAppBarColor: darkColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        // other settings removed for clarity
        selectedIconTheme: IconThemeData(
          color: mainColor,
          size: 24,
        ),
        unselectedIconTheme: IconThemeData(
          color: lightColor,
          size: 24,
        ),
      ),
      backgroundColor: darkColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(lightColor),
      )),
      dialogTheme: DialogTheme(
        backgroundColor: darkColor, // your color
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(40)), // change 40 to your desired radius
      ),
      timePickerTheme: TimePickerThemeData(
          backgroundColor: darkColor
      )
  );
}
