import 'package:flutter/material.dart';
import 'package:net_stream/config/theme/widgets_theme/appbar_theme.dart';
import 'package:net_stream/config/theme/widgets_theme/bottom_sheet_theme.dart';
import 'package:net_stream/config/theme/widgets_theme/dialog_theme.dart';
import 'package:net_stream/config/theme/widgets_theme/elevated_button_theme.dart';
import 'package:net_stream/config/theme/widgets_theme/icon_button_theme.dart';
import 'package:net_stream/config/theme/widgets_theme/text_field_theme.dart';
import 'package:net_stream/config/theme/widgets_theme/text_theme.dart';

class DAppTheme {
  DAppTheme._();
  static ThemeData _appTheme(
          {required Brightness brightness,
          required Color primaryColor,
          required Color scaffoldBackgroundColor,
          required TextTheme textTheme,
          required AppBarTheme appBarTheme,
          required ElevatedButtonThemeData elevatedButtonTheme,
          required InputDecorationTheme inputDecorationTheme,
          required DialogTheme dialogTheme,
          required BottomSheetThemeData bottomSheetTheme,
          required IconButtonThemeData iconButtonTheme}) =>
      ThemeData(
          useMaterial3: true,
          fontFamily: 'Poppins',
          brightness: brightness,
          primaryColor: primaryColor,
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          textTheme: textTheme,
          elevatedButtonTheme: elevatedButtonTheme,
          inputDecorationTheme: inputDecorationTheme,
          dialogTheme: dialogTheme,
          bottomSheetTheme: bottomSheetTheme,
          iconButtonTheme: iconButtonTheme);
  static final lightTheme = _appTheme(
      brightness: Brightness.light,
      primaryColor: const Color(0xff666666),
      scaffoldBackgroundColor: Colors.white,
      textTheme: DTextTheme.lightTextTheme,
      appBarTheme: DAppbarTheme.lightAppbarTheme,
      elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: DTextFieldTheme.lightInputDecorationTheme,
      dialogTheme: DDialogTheme.lightDialogTheme,
      bottomSheetTheme: DBottomSheetTheme.lightBottomSheetTheme,
      iconButtonTheme: DIconButtonTheme.iconButtonTheme);

  static final darkTheme = _appTheme(
      brightness: Brightness.dark,
      primaryColor: const Color(0xff666666),
      scaffoldBackgroundColor: Colors.black,
      textTheme: DTextTheme.darkTextTheme,
      appBarTheme: DAppbarTheme.darkAppbarTheme,
      elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: DTextFieldTheme.darkInputDecorationTheme,
      dialogTheme: DDialogTheme.darkDialogTheme,
      bottomSheetTheme: DBottomSheetTheme.darkBottomSheetTheme,
      iconButtonTheme: DIconButtonTheme.iconButtonTheme);
}
