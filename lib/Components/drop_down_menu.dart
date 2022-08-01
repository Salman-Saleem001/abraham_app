import 'package:abraham_app/Constants/colors.dart';
import 'package:abraham_app/Models/personal_details.dart';
import 'package:abraham_app/Screens/home_screen.dart';
import 'package:abraham_app/Services/google_sign_in.dart';
import 'package:abraham_app/Utils/drop_down_items_for_age.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownMenuList extends StatefulWidget {
  var dropDownValue;
  Person person;
  List<String> dropDownValues;
  DropDownMenuList({
    Key? key,
    required this.dropDownValue,
    required this.person,
    required this.dropDownValues,
  }) : super(key: key);

  @override
  State<DropDownMenuList> createState() => _DropDownMenuListState();
}

class _DropDownMenuListState extends State<DropDownMenuList> {
  final userId = GoogleSignInProvider();

  // get dropDownItems => widget.dropDownItems;
  Person userPerson = Person();
  @override
  Widget build(BuildContext context) {
    Person userPerson = widget.person;
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    {
      return Container(
        decoration: BoxDecoration(
          color: Color(ColorX.black),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: sizeWidth / 25,
        ),
        child: DropdownButton(
          icon: Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Color(ColorX.white),
          ),
          iconSize: 30,
          borderRadius: BorderRadius.circular(8),
          style: TextStyle(fontSize: 24, color: Color(ColorX.darkGrey)),
          focusColor: Color(ColorX.black),
          dropdownColor: Color(ColorX.black),
          value: widget.dropDownValue,
          elevation: 0,
          items: dropDownList().map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items + '  '),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              for (int i = 0; i < dropDownList().length; i++) {
                if (widget.dropDownValue == dropDownItems()[i]) {
                  userPerson.setAge(newValue.toString());
                } else if (widget.dropDownValue == 'Religion' ||
                    widget.dropDownValue == 'Islam' ||
                    widget.dropDownValue == 'Christian' ||
                    widget.dropDownValue == 'Judaism') {
                  userPerson.setReligion(newValue.toString());
                } else if (widget.dropDownValue == 'Denomination' ||
                    widget.dropDownValue == 'Shia' ||
                    widget.dropDownValue == 'Orthodox' ||
                    widget.dropDownValue == 'Catholic' ||
                    widget.dropDownValue == 'Protestant' ||
                    widget.dropDownValue == 'Conservative' ||
                    widget.dropDownValue == 'Reform') {
                  userPerson.setDenomination(newValue.toString());
                  print(userPerson.getAge());
                  print(userPerson.getReligion());
                  print(userPerson.getDenomination());
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreen(
                                person: userPerson,
                              )));
                }
              }

              widget.dropDownValue = newValue;
            });
          },
          menuMaxHeight: sizeHeight / 3,
        ),
      );
    }
  }

  List<String> dropDownList() {
    List<String> items = [];
    items.addAll(widget.dropDownValues);
    return items;
  }
}
