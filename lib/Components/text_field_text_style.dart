import 'package:flutter/cupertino.dart';

TextStyle getTextFieldTextStyle(
    {int? color = 0xff000000, double? fontSize = 20}) {
  return TextStyle(
      fontSize: fontSize, fontWeight: FontWeight.w400, color: Color(color!));
}
