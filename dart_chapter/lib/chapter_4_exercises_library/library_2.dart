// удаление повторяющихся элементы в списке
// расчет факториал задаваемого числа
// проверка наличия элемента в списке или множестве

List<String> listSet(List<String> nameList) {
  nameList = nameList.toSet().toList();
  return nameList;
}

// n!=1*2*..*n
// 3 = 1 * 2 * 3
int numFactorial(n) {
  var sum = 1;
  for (var i = 1; i <= n; i++) {
    sum *= i;
  }
  return sum;
}

bool checkValue(List nameList, n) {
  var check = nameList.contains(n);
  return check;
}
