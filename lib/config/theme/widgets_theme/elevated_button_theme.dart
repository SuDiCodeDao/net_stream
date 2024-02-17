import 'package:flutter/material.dart';

class DElevatedButtonTheme {
  DElevatedButtonTheme._();

  static ElevatedButtonThemeData _elevatedButtonStyle({
    required Color backgroundColor,
    required Color sideColor,
  }) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 1,
        foregroundColor: Colors.white,
        backgroundColor: backgroundColor,
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
        side: BorderSide(color: sideColor),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        ),
      ),
    );
  }

  static final lightElevatedButtonTheme = _elevatedButtonStyle(
    backgroundColor: const Color(0xff666666),
    sideColor: const Color(0xff666666),
  );

  static final darkElevatedButtonTheme = _elevatedButtonStyle(
    backgroundColor: Colors.teal,
    sideColor: Colors.teal,
  );
}
