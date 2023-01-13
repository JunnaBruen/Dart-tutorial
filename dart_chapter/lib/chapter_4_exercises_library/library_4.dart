// создание списка, состоящего из последовательности
// целых значений (от 23 до 47)
// вещественных значений от 0 до 1
// с задаваемым шагом

// выбор чисел из списка с задаваемым шагом
// a - задаваемый шаг
List<int> fiveNum(List<int> nameList, int a) {
  List<int> numValue = [];
  for (var i = 0; i < nameList.length; i++) {
    if ((i + 1) % a == 0) {
      numValue.add(nameList[i]);
    }
  }
  return numValue;
}

List<num> fiveDou(List<double> nameList, int a) {
  List<double> numValue = [];
  for (var i = 0; i < nameList.length; i++) {
    if ((i + 1) % a == 0) {
      numValue.add(nameList[i]);
    }
  }
  return numValue;
}
