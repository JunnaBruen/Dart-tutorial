void main(List<String> args) {
  // if-else (для условий если-то-иначе)
  print('for-alse');
  var a = 5;
  var b = 3;
  var c = 7;
  if (a == b) {
    print('a == b');
  } else if (a == c) {
    print('a == c');
  } else {
    print('there is no equality');
  }

  // for (цикл для чисел и строк)
  print('for');
  String myStr = '';
  for (var i = 0; i < 5; i++) {
    myStr = myStr + i.toString();
  }
  print(myStr);

  var myStr2 = 'Cat';
  for (var i = 0; i < myStr2.length; i++) {
    print(myStr2[i]);
  }
  print(myStr2);

  var myList = <int>[];
  for (var i = 0; i <= 4; i++) {
    myList.add(i);
  }
  print(myList);

  // for-in (цикл для коллекций List и Set)
  print('for-in');
  var myList2 = <int>[for (var i = 0; i <= 3; i++) i];
  for (var j in myList2) {
    print(j);
  }
  print(myList2);

  var mySet = <int>{1, 2, 3, 4, 5, 6, 7, 8};
  for (var j in mySet) {
    print(j);
  }
  print(mySet);

  // for-each (цикл для коллекций Map)
  print('for-each');
  var myMap = <int, String>{
    1: 'cat',
    2: 'dog',
    3: 'animal',
  };
  myMap.forEach((key, value) {
    print('$key => $value');
  });

  var myStr3 = 'Dog';
  myStr3.split('').forEach((element) {
    print(element);
  });
  print(myStr3);

  // while (цикл выполняется в случае проверки true)
  // может быть использован вместо for
  print('while');
  String myStr4 = 'Animal';
  // первое условие for
  var i = 0;
  // второе условие for
  while (i < myStr4.length) {
    print(myStr4[i]);
    // третье условие for
    i++;
  }
  print(myStr4);

  // do-while (цикл выполняется хотя бы один раз)
  print('do-while');
  var myStr5 = 'One';
  // первое условие for
  var j = 0;
  do {
    print(myStr5[j]);
    // третье условие for
    j++;
  } // второе условие for
  while (j < myStr5.length);
  print(myStr5);

  // continue (поток для немедленного перехода в начало цикла)
  print('continue');
  int myNum = 11;
  print(myNum);
  while (myNum > 0) {
    // третье условие for
    myNum--;

    if (myNum % 2 == 0) {
      continue;
    }
    print(myNum);
  }
  print(myNum);

  // break (поток для немедленного выхода из цикла)
  print('break');
  var myNum2 = 35;
  while (true) {
    if (myNum2 <= 3) {
      break;
    }
    // третье условие for
    myNum2--;
  }
  print(myNum2);

  // switch-case (поток для сравнения переменных)
  print('switch-case');
  var myStr6 = 'Hare';
  switch (myStr6) {
    case 'Dog':
      print('This is dog.');
      break;
    case 'Hamster':
      print('This is hamster.');
      break;
    case 'Cat':
      print('This is cat');
      break;
    default:
      print('It\'s a different animal.');
  }
  print(myStr6);

  var myStr7 = 'Cat';
  switch (myStr7) {
    case 'Cat':
    case 'Dog':
    case 'Hamster':
      print('This is pet.');
      break;
    default:
      print('This is forest animal.');
  }
  // print(myStr7);

  var myStr8 = 'Cat';
  switch (myStr8) {
    pet:
    case 'Pet':
      print('Pet');
      break;
    case 'Cat':
      print('Cat');
      continue pet;
    case 'Dog':
      print('Dog');
      continue pet;
    case 'Hamster':
      print('Hamster');
      continue pet;
    default:
      print('This is not a pet.');
  }
}
