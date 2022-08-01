class ChatPerson {
  String firstName;
  String gender;
  String religion;
  String denomination;
  ChatPerson({
    required this.firstName,
    required this.gender,
    required this.religion,
    required this.denomination,
  });
  void setReligion(String val) {
    religion = val;
  }

  void setFirstName(String val) {
    firstName = val;
  }

  void setGender(String val) {
    gender = val;
  }

  void setDenomination(String val) {
    denomination = val;
  }

  String getReligion() {
    return religion;
  }

  String getFirstName() {
    return firstName;
  }

  String getGender() {
    return gender;
  }

  String getDenomination() {
    return denomination;
  }
}
