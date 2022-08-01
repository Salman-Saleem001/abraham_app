import 'package:abraham_app/Components/button_data.dart';
import 'package:abraham_app/Components/drop_down_menu.dart';
import 'package:abraham_app/Components/text_field_inputdecoration.dart';
import 'package:abraham_app/Components/text_field_text_style.dart';
import 'package:abraham_app/Models/personal_details.dart';
import 'package:abraham_app/Utils/drop_down_items_for_age.dart';
import 'package:abraham_app/Utils/select_denomination.dart';
import 'package:abraham_app/Utils/set_gender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/logo_text.dart';
import '../Constants/colors.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  bool maleButton = false;
  bool femaleButton = false;
  TextEditingController firstNmeController = TextEditingController();
  TextEditingController lastNmeController = TextEditingController();
  void dispose() {
    firstNmeController.dispose();
    lastNmeController.dispose();
    super.dispose();
  }

  String dropDownValue = '1';
  // List of items in our dropdown menu
  Person person = Person();
  List<String> religion = ['Religion', 'Islam', 'Christian', 'Judaism'];

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: getLogoText()),
                SizedBox(
                  height: sizeHeight / 20,
                ),
                Text(
                  'First name :',
                  style: getTextFieldTextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: sizeHeight / 60,
                ),
                SizedBox(
                  width: sizeWidth / 2,
                  child: TextFormField(
                    style: TextStyle(color: Color(ColorX.white)),
                    controller: firstNmeController,
                    cursorColor: Color(ColorX.white),
                    cursorHeight: 30,
                    onChanged: (value) {
                      person.setFirstName(value);
                    },
                    keyboardType: TextInputType.name,
                    decoration:
                        getTextFieldInputDecoration(label: 'First Name'),
                  ),
                ),
                SizedBox(
                  height: sizeHeight / 60,
                ),
                Text(
                  'Last name :',
                  style: getTextFieldTextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: sizeHeight / 60,
                ),
                SizedBox(
                  width: sizeWidth / 2,
                  child: TextFormField(
                    controller: lastNmeController,
                    style: TextStyle(color: Color(ColorX.white)),
                    cursorColor: Color(ColorX.white),
                    cursorHeight: 30,
                    onChanged: (value) {
                      person.setLastName(value);
                    },
                    keyboardType: TextInputType.name,
                    decoration: getTextFieldInputDecoration(label: 'Last name'),
                  ),
                ),
                SizedBox(
                  height: sizeHeight / 60,
                ),
                Row(
                  children: [
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: sizeHeight / 60,
                          horizontal: sizeWidth / 20),
                      color: femaleButton
                          ? Color(ColorX.darkGrey)
                          : Color(ColorX.black),
                      onPressed: () {
                        setState(() {
                          maleButton = false;
                          femaleButton = true;
                          setGender(maleButton, person);
                        });
                      },
                      child: getButtonData('Female'),
                    ),
                    SizedBox(
                      width: sizeWidth / 20,
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: sizeHeight / 60,
                          horizontal: sizeWidth / 20),
                      color: maleButton
                          ? Color(ColorX.darkGrey)
                          : Color(ColorX.black),
                      onPressed: () {
                        setState(() {
                          femaleButton = false;
                          maleButton = true;
                          setGender(maleButton, person);
                        });
                      },
                      child: getButtonData('Male'),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeHeight / 40,
                ),
                Text(
                  'Age :',
                  style: getTextFieldTextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: sizeHeight / 70,
                ),
                DropDownMenuList(
                  dropDownValue: 'Age',
                  person: person,
                  dropDownValues: dropDownItems(),
                ),
                SizedBox(
                  height: sizeHeight / 40,
                ),
                Text(
                  'Religion :',
                  style: getTextFieldTextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: sizeHeight / 70,
                ),
                DropDownMenuList(
                  dropDownValue: 'Religion',
                  person: person,
                  dropDownValues: religion,
                ),
                SizedBox(
                  height: sizeHeight / 40,
                ),
                Text(
                  'Denomination :',
                  style: getTextFieldTextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: sizeHeight / 70,
                ),
                DropDownMenuList(
                  dropDownValue: 'Denomination',
                  person: person,
                  dropDownValues:
                      selectDenomination(dropDownValue: person.getReligion()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
