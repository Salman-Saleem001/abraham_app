import 'package:flutter/cupertino.dart';

class Person extends ChangeNotifier {
  String firstName;
  String lastName;
  String gender;
  String age;
  String religion;
  String denomination;
  Person({
    this.firstName = 'Salman',
    this.lastName = 'Saleem',
    this.gender = 'Male',
    this.age = '20',
    this.religion = 'Religion',
    this.denomination = 'Denomination',
  });
  void setReligion(String val) {
    religion = val;
    notifyListeners();
  }

  void setFirstName(String val) {
    firstName = val;
  }

  void setLastName(String val) {
    lastName = val;
  }

  void setGender(String val) {
    gender = val;
  }

  void setAge(String val) {
    age = val;
    notifyListeners();
  }

  void setDenomination(String val) {
    denomination = val;
    notifyListeners();
  }

  String getReligion() {
    return religion;
  }

  String getAge() {
    return age;
  }

  String getFirstName() {
    return firstName;
  }

  String getLast() {
    return lastName;
  }

  String getGender() {
    return gender;
  }

  String getDenomination() {
    return denomination;
  }

  void onChange() {
    notifyListeners();
  }
}
