// функция верхнего уровня main
import 'package:test/scaffolding.dart';
import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  myFunction();
  myFunction2('Junna');
  print(myFunction3('Jari'));

  var myFunction3Name = myFunction3('Jari');
  print(myFunction3Name);

  var myFunction4Name = myFunction4('Junna');
  print(myFunction4Name);

  myFunction5('Junna', 11, 'July');

  myFunction6(name: 'Junna', date: 11, monthName: 'July');

  print(myFunction7(date: 11, monthName: 'July'));

  print(myFunction8('Junna', 11));
  print(myFunction8('Junna', 11, 'July'));

  var myList = [10, 20, 30];
  addFunction(myList, 40);
  print(myList);

  print(myFunction9('Junna', 11));
  print(myFunction9('Junna', 11, 'July'));

  print(myFunction10(name: 'Junna', monthName: 'July'));
  print(myFunction10(name: 'Junna', monthName: 'July', date: 11));

  var myAdd = addInt;
  print(myAdd(10, 5));

  print(sub(40, 20, 10, add1));
  print(sub2(100, 50, 25, add2));

  // анонимные функции
  var myList2 = ['This', 'is', 'an', 'anonymous', 'function'];
  for (var element in myList2) {
    print('By index ${myList2.indexOf(element)} stored value $element');
  }
  // ignore: avoid_function_literals_in_foreach_calls
  myList2.forEach((element) {
    print('By index ${myList2.indexOf(element)} stored value $element');
  });

  // стрелочные функции
  var addArrow = add3;
  print(subArrow(200, 100, 50, addArrow));

  // замыкания
  var microwave = factory('Scarlet', 750);
  print(microwave('Fish', 3));
  print(microwave('Stew', 2));

  var microwave2 = factory('Scarlet', 1100);
  print(microwave2('Soup', 1));
  print(microwave2('Lasagna', 3));

  // степени
  var calculation = degree(2);
  print(calculation(10));

  // рекурсия
  // прямая рекурсия
  var myList3 = [10, 20, 30, 40, 50];
  print(recursionFunction(myList3));

  // косвенная рекурсяи
  var myList4 = [1, 2, 3, 4, 5];
  print(recursionFunction2(myList4));

  // генераторные функции
  var result = <int>[];
  for (var j in myGenerator()) {
    result.add(j);
  }
  print(result);

  var result2 = <int>[];
  for (var j in myGenerator2()) {
    result2.add(j);
  }
  print(result2);

  var result3 = <int>[];
  //var n = int.parse(stdin.readLineSync()!);
  var n = (Random().nextDouble() * 100).toInt();
  for (var j in myGenerator3(n)) {
    result3.add(j);
  }
  print(n);
  print(result3);

  var result4 = <int>[];
  var iInMyGenerator = myGenerator4(n);
  iInMyGenerator.forEach((element) {
    result4.add(element);
  });
  var resultList = iInMyGenerator.toList();
  print(result4);
  print(resultList);

  Stream<int> sequence = myAsGenerator(n);
  sequence.listen(print);
}

//
// объявление функции
void myFunction() {
  print('Hello!');
}

void myFunction2(String name) {
  print('Hello, $name!');
}

String myFunction3(String name) {
  var hello = 'Hello, $name!';
  return hello;
}

myFunction4(String name) {
  var hello = 'Hello, $name!';
  return hello;
}

// объявление входных аргументов функции
// позиционные аргументы
void myFunction5(String name, int date, String monthName) {
  print('$name was born $date $monthName.');
}

// именованные аргументы
// {required} - требуется
void myFunction6(
    {required String name, required int date, required String monthName}) {
  print('$name was born $date $monthName.');
}

// ? - значение аргумента может хранить null
String myFunction7(
    {String? name, required int date, required String monthName}) {
  if (name != null) {
    return '$name was born $date $monthName.';
  }
  return 'Name not set.';
}

// необязательные позиционные аргументы
// []
String myFunction8(String name, int date, [String? monthName]) {
  if (monthName != null) {
    return '$name was born $date $monthName.';
  }
  return '$date' 'th, unknown month, was born $name.';
}

// аргументы List, Set, Map
void addFunction(List<int> funcList, int b) {
  funcList.add(b);
}

// значение по умолчанию (указываются в конце)
// необязательные позиционные аргументы
String myFunction9(String name, int date, [String monthName = 'January']) {
  return '$name was born $date $monthName.';
}

// значение по умолчанию (указываются в конце)
// обязательные именованные аргументы
String myFunction10(
    {required String name, int date = 1, required String monthName}) {
  return '$name was born $date $monthName.';
}

// обращение к функции через переменную
int addInt(int a, int b) {
  return a + b;
}

// функция как входной аргумент другой функции
int add1(int a, int b) {
  return a + b;
}

int sub(int c, int a, int b, int Function(int a, int b) func) {
  return c - func(a, b);
}

// typedef - определение типа
// typedef int addFunc(int a, int b);
// ! в классах и определениях типов первая буква каждого слова
// (включая первое слово) должна быть заглавной
typedef AddFunc = int Function(int a, int b);

int add2(int a, int b) {
  return a + b;
}

int sub2(int c, int a, int b, AddFunc func) {
  return c - func(a, b);
}

// стрелочные функции
typedef AddFunc2 = int Function(int a, int b);
int add3(int a, int b) => a + b;
int sub3(int c, int a, int b, AddFunc2 func) => c - func(a, b);
/*
var subArrow = (int c, int a, int b, AddFunc2 func) {
  return c - func(a, b);
};
*/
subArrow(int c, int a, int b, AddFunc2 func) {
  return c - func(a, b);
}

// замыкания
int indexMicrowave = 0;
Function factory(String nameMicrowave, int power) {
  var model = '$nameMicrowave-RX-0011$indexMicrowave';
  indexMicrowave++;
  return (String dish, int mode) {
    var writeMicrowave = StringBuffer('Microwave \'$model\'power $power W');
    writeMicrowave.write(', heats dish \'$dish\' in mode $mode.');
    return writeMicrowave;
  };
}

// степени
typedef Handler = int Function(int value);
Handler degree(int degree) {
  return (int value) => pow(value, degree).toInt();
}

// рекурсия
// прямая рекурсия
int recursionFunction(List<int> recursionList) {
  print(recursionList);
  if (recursionList.length <= 1) {
    return recursionList[0];
  } else {
    return recursionList[0] + recursionFunction(recursionList.sublist(1));
  }
}

// косвенная рекурсия
int recursionFunction2(List<int> recursionList) {
  print(recursionList);
  if (recursionList.length <= 1) {
    return recursionList[0];
  } else {
    return recursionFunction3(recursionList);
  }
}

int recursionFunction3(List<int> recursionList) {
  return recursionList[0] + recursionFunction2(recursionList.sublist(1));
}

// генераторные функции
// Iterable<T>
// sync
// yield
Iterable<int> myGenerator() sync* {
  var i = 0;
  while (i < 5) {
    yield i++;
  }
}

Iterable<int> myGenerator2() sync* {
  yield 0;
  yield 1;
  yield 2;
  yield 3;
  yield 4;
}

Iterable<int> myGenerator3(int n) sync* {
  var i = 0;
  while (i < n) {
    if (i % 4 == 0) {
      yield i;
    }
    i++;
  }
}

Iterable<int> myGenerator4(int n) sync* {
  var i = 0;
  while (i < n) {
    if (i % 4 == 0) {
      yield i;
    }
    i++;
  }
}

// Stream<T>
// async
// yield
Stream<int> myAsGenerator(int n) async* {
  var i = 0;
  while (i < n) {
    if (i % 4 == 0) {
      yield i;
    }
    i++;
  }
}
