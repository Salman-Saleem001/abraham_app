import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';

import '../Constants/colors.dart';

Widget getSignInButton({required String buttonName}) {
  Buttons requiredButton;
  int color;
  int textColor = 0xffffffff;
  AssetImage? image;
  if (buttonName.toLowerCase() == 'facebook') {
    requiredButton = Buttons.FacebookNew;
    image = AssetImage(
      'assets/logos/facebook_new.png',
      package: 'flutter_signin_button',
    );
    color = ColorX.facebookBlue;
  } else if (buttonName.toLowerCase() == 'google') {
    requiredButton = Buttons.Google;
    color = ColorX.white;
    textColor = ColorX.darkGrey;
    image = AssetImage(
      'assets/logos/google_light.png',
      package: 'flutter_signin_button',
    );
  } else {
    requiredButton = Buttons.AppleDark;
    color = ColorX.black;
  }

  return Container(
    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 50),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Color(color),
      boxShadow: [
        BoxShadow(
          color: buttonName == 'google'
              ? Color(ColorX.white).withOpacity(.9)
              : Colors.grey.withOpacity(0.5),
          spreadRadius: 1.5,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          child: buttonName == 'facebook' || buttonName == 'google'
              ? Image(
                  image: image!,
                  height: 40.0,
                )
              : Icon(
                  Icons.apple_rounded,
                  size: 40,
                  color: Color(ColorX.white),
                ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Text(
            'Sign In With ' + buttonName.toUpperCase(),
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(textColor)),
          ),
        )
      ],
    ),
  );
}
