import 'package:abraham_app/Components/sign_in_button.dart';
import 'package:abraham_app/Services/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/logo_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            body: Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: getLogoText()),
          SizedBox(
            height: sizeHeight / 3.3,
          ),
          getSignInButton(buttonName: 'facebook'),
          getSizedBox(sizeHeight),
          GestureDetector(
              onTap: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
              },
              child: getSignInButton(buttonName: 'google')),
          getSizedBox(sizeHeight),
          getSignInButton(buttonName: 'Apple'),
        ],
      ),
    )));
  }

  SizedBox getSizedBox(sizeHeight) {
    return SizedBox(
      height: sizeHeight / 70,
    );
  }
}
