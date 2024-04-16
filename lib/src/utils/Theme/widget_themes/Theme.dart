import 'package:flutter/material.dart';
import 'package:flutter_barber_app/src/utils/Theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    textTheme: TTextTheme.lightTextTheme,
    brightness: Brightness.light,
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: TTextTheme.darkTextTheme,
    brightness: Brightness.dark,
  );
}
