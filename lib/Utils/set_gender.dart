import 'package:abraham_app/Models/personal_details.dart';

void setGender(bool maleButton, Person person) {
  if (maleButton) {
    person.setGender('Male');
  } else {
    person.setGender('Female');
  }
}
