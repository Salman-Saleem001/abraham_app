import 'package:abraham_app/Components/text_field_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/colors.dart';

Row getButtonData(String label) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      label == 'Male'
          ? Icon(
              Icons.male,
              size: 25,
              color: Color(ColorX.white),
            )
          : Icon(
              Icons.female,
              size: 25,
              color: Color(ColorX.white),
            ),
      SizedBox(
        width: 10,
      ),
      Text(
        label,
        style: getTextFieldTextStyle(color: ColorX.white),
      )
    ],
  );
}
