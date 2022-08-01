import 'package:abraham_app/Constants/colors.dart';
import 'package:abraham_app/Models/new_chat_person.dart';
import 'package:abraham_app/Models/personal_details.dart';
import 'package:abraham_app/Screens/chat_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row getHomeHead(sizeHeight, sizeWidth, Person person, context) {
  List<ChatPerson> chatPerson = [
    ChatPerson(
        firstName: 'Ahad',
        gender: 'Male',
        religion: 'Islam',
        denomination: 'Suni'),
    ChatPerson(
        firstName: 'Zara',
        gender: 'Female',
        religion: 'Islam',
        denomination: 'Shia'),
    ChatPerson(
        firstName: 'Clark',
        gender: 'Male',
        religion: 'Judaism',
        denomination: 'Reform'),
    ChatPerson(
        firstName: 'Clark',
        gender: 'Male',
        religion: 'Christian',
        denomination: 'Orthodox'),
    ChatPerson(
        firstName: 'Lara',
        gender: 'Female',
        religion: 'Judaism',
        denomination: 'Conservative'),
  ];
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(
        height: sizeHeight / 6,
        width: sizeWidth / 4,
        child: FloatingActionButton(
          heroTag: "btn1",
          onPressed: () {},
          backgroundColor: Color(ColorX.black),
          isExtended: true,
          child: Icon(
            Icons.video_call,
            color: Color(ColorX.white),
            size: 60,
          ),
        ),
      ),
      SizedBox(
        height: sizeHeight / 6,
        width: sizeWidth / 4,
        child: FloatingActionButton(
          heroTag: "btn2",
          onPressed: () {},
          backgroundColor: Color(ColorX.black),
          isExtended: true,
          child: Icon(
            Icons.add_call,
            color: Color(ColorX.white),
            size: 60,
          ),
        ),
      ),
      SizedBox(
        height: sizeHeight / 6,
        width: sizeWidth / 4,
        child: FloatingActionButton(
          heroTag: "btn3",
          onPressed: () {
            for (int i = 0; i < chatPerson.length; i++) {
              if (person.getGender() != chatPerson[i].getGender() &&
                  person.getReligion() != chatPerson[i].getReligion() &&
                  person.getDenomination() != chatPerson[i].getDenomination()) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatDetail(
                              name: chatPerson[i].getFirstName(),
                              chatcheck: 'new',
                            )));
              }
            }
          },
          backgroundColor: Color(ColorX.black),
          isExtended: true,
          child: Icon(
            Icons.messenger,
            color: Color(ColorX.white),
            size: 60,
          ),
        ),
      ),
    ],
  );
}
