// подсчет количества элементов в списке % 4 и 3 == 0
// расчет среднеарифметического значения элементов списка

dynamic divOnThree(List<int> nameList) {
  List<int> divThree = [];
  for (var i = 0; i < nameList.length; i++) {
    if (nameList[i] != 0 && nameList[i] % 3 == 0) {
      divThree.add(nameList[i]);
    }
  }
  var listSet = divThree.toSet().toList();
  return 'These numbers are divisible by 3: $listSet.';
}

dynamic divOnFour(List<int> nameList) {
  List<int> divFour = [];
  for (var i = 0; i < nameList.length; i++) {
    if (nameList[i] != 0 && nameList[i] % 4 == 0) {
      divFour.add(nameList[i]);
    }
  }
  var listSet = divFour.toSet().toList();
  return 'These numbers are divisible by 4: $listSet.';
}

String divValue(nameList) {
  return '${divOnThree(nameList)}\n${divOnFour(nameList)}';
}

double midValue(List<int> nameList) {
  var sum = 0;
  var indexList = nameList.length;
  for (var i in nameList) {
    sum += i;
  }
  double out = sum / indexList;
  return out;
}
