import 'package:abraham_app/Screens/info_screen.dart';
import 'package:abraham_app/Screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            return InformationScreen();
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Something went Wrong!!'),
            );
          } else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}
