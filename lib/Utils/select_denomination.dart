List<String> selectDenomination({required String dropDownValue}) {
  List<String> denominationIslam = ['Denomination', 'Shia', 'Suni'];
  List<String> denominationChristian = [
    'Denomination',
    'Orthodox',
    'Catholic',
    'Protestant'
  ];

  List<String> denominationJudaism = [
    'Denomination',
    'Conservative',
    'Orthodox',
    'Reform'
  ];
  List<String> selectedList = [];
  if (dropDownValue == 'Islam') {
    selectedList.addAll(denominationIslam);
  } else if (dropDownValue == 'Christian') {
    selectedList.addAll(denominationChristian);
  } else if (dropDownValue == 'Judaism') {
    selectedList.addAll(denominationJudaism);
  } else if (dropDownValue == 'Religion') {
    selectedList.addAll(denominationIslam);
  }
  return selectedList;
}
