import 'package:abraham_app/Components/chat_list.dart';
import 'package:abraham_app/Components/home_head.dart';
import 'package:abraham_app/Components/home_heading.dart';
import 'package:abraham_app/Models/personal_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Person person;
  HomeScreen({required this.person, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              getHomeHeading(28.0, 'Start a dialog'),
              getHomeHead(sizeHeight, sizeWidth, person, context),
              SizedBox(
                height: sizeHeight / 80,
              ),
              getHomeHeading(20.0, 'Your previous dialogs'),
              SizedBox(
                height: sizeHeight / 90,
              ),
              Expanded(
                child: ChatList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
