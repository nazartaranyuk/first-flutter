import 'package:flutter/material.dart';

Color mainInfoColor = hexToColor("#F8F9FC");
Color selectedTabColor = hexToColor("#363F72");
Color unselectedTabColor = hexToColor("#667085");

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}