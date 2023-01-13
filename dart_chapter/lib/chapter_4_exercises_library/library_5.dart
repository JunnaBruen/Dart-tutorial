// подсчет количества вхождения каждого элемента в список
// инверсия последовательности расположения элементов в списке

String countValue(List<String> nameList, n) {
  var valueOn = nameList.contains(n);
  var count = 0;

  if (valueOn == true) {
    for (var i = 0; i < nameList.length; i++) {
      if (nameList[i] == n) {
        count += 1;
      }
    }
    return 'Value \'$n\' in the list is $count times.';
  }
  return 'No value \'$n\' in the list.';
}

List<String> reverseList(List<String> nameList) {
  List<String> out = [...nameList.reversed];
  return out;
}
