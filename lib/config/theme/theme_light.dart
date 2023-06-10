import 'package:flutter/material.dart';
import 'package:homework_basket_provider/config/style/color_management.dart';
import 'package:homework_basket_provider/constants/font_size.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: ColorManager.orange,
    centerTitle: true,
    titleTextStyle:
        TextStyle(color: ColorManager.black, fontSize: FontSizes.f20),
  ),
);
