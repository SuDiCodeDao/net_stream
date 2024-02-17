import 'package:flutter/material.dart';

class DBottomSheetTheme {
  DBottomSheetTheme._();

  static BottomSheetThemeData _bottomSheetTheme({
    required Color backgroundColor,
    required Color modalBackgroundColor,
    required Color modalBarrierColor,
  }) {
    return BottomSheetThemeData(
      elevation: 1,
      modalElevation: 1,
      backgroundColor: backgroundColor,
      modalBackgroundColor: modalBackgroundColor,
      modalBarrierColor: modalBarrierColor,
    );
  }

  static final lightBottomSheetTheme = _bottomSheetTheme(
      backgroundColor: const Color(0xff666666),
      modalBackgroundColor: const Color(0xff999999),
      modalBarrierColor: const Color(0xFF000000));
  static final darkBottomSheetTheme = _bottomSheetTheme(
      backgroundColor: const Color(0xff666666),
      modalBackgroundColor: const Color(0x80000000),
      modalBarrierColor: const Color(0xFF000000));
}
