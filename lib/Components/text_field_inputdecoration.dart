import 'package:abraham_app/Components/text_field_text_style.dart';
import 'package:abraham_app/Constants/colors.dart';
import 'package:flutter/material.dart';

InputDecoration getTextFieldInputDecoration({required String label}) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    filled: true,
    fillColor: Color(ColorX.black),
    label: Text(
      label,
      style: getTextFieldTextStyle(color: ColorX.darkGrey),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 0.0,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 0.0,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 0.0,
      ),
    ),
    errorBorder: InputBorder.none,
  );
}
