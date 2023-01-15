import 'package:flutter/material.dart';
import 'package:todolist1/core/theme/theme.dart';
import 'element/text_theme.dart';

ThemeData LightThemeData() {
  return ThemeData(
    backgroundColor: lightColor,

      primaryColor: mainColor,

      iconTheme: const IconThemeData(color: mainColor),

      brightness: Brightness.light,
      scaffoldBackgroundColor: lightColor,
      textTheme: CustomTextTheme.textThemeLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: lightColor,
        iconTheme: IconThemeData(color: mainColor, size: 30),
        elevation: 0,
        centerTitle: true,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: darkColor,
          ),
        ),
      ),
      bottomAppBarColor: lightColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: mainColor,
          size: 24,
        ),
        unselectedIconTheme: IconThemeData(
          color: darkColor,
          size: 24,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          darkColor,
        ),
      )),
      dialogTheme: DialogTheme(
        backgroundColor: lightColor, // your color
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(40)), // change 40 to your desired radius
      ),
      timePickerTheme: const TimePickerThemeData(backgroundColor: lightColor));
}
