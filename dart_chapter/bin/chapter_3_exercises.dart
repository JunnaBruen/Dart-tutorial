import 'dart:developer';
//import 'dart:html';
import 'dart:math';

void main(List<String> args) {
  print('Functions.');
  print('Exercise #1');
  var a = ((Random().nextDouble() + 0.01) * 100).toInt();
  var b = ((Random().nextDouble() + 0.01) * 100).toInt();
  var c = ((Random().nextDouble() + 0.01) * 100).toInt();
  print('a = $a \nb = $b \nc = $c');
  print(first.runtimeType);
  print(first(a, b, c));
  print(first1.runtimeType);
  first1(a, b, c);

  print('Exercise #2');
  List<int> secondList = [a, b, c];
  var secondValue = second(secondList);
  print('Sum of values $secondValue');

  print('Exercise #3');
  var threeValue = three(secondList);
  print('Multiplication of value $threeValue');

  print('Exercise #4');
  var d = ((Random().nextDouble()) * 10).toInt();
  var e = ((Random().nextDouble()) * 10).toInt();
  var f = ((Random().nextDouble()) * 10).toInt();
  var g = ((Random().nextDouble()) * 10).toInt();
  var h = ((Random().nextDouble()) * 10).toInt();
  var j = ((Random().nextDouble()) * 10).toInt();
  var fourList = [d, e, f, g, h, j];
  print(fourList);
  print(four(fourList));
  print(four.runtimeType);

  print('Exercise #5');
  var fiveNum = ((Random().nextDouble() + 0.11) * 10).toInt();
  print(fiveNum);
  print(five(fiveNum));

  print('Exercise #6');
  List<int> sixList = [d, e, f, g, h];
  print(sixList);
  print(six(sixList, j));
  //Set<int> sixSet = {g, h, j};
  //print(sixSet);
  //print(six(sixSet, 1));

  print('Exercise #7');
  List<int> sevenList = [d, e, f, g, h, j];
  print(sevenList);
  //print(seven(sevenList));
  seven(sevenList);

  print('Exercise #8');
  List<int> eightList = [1, 2, 3, 4, 5];
  print(eightList);
  print(eight(eightList));

  print('Exercise #9');
  List<int> nineList = [a, b, c];
  print('$a \n$b \n$c');
  print(nine(nineList));

  print('Exercise #10');
  List<int> tenList = [d, e, f, g, h, j, d, e, f, g, h];
  print(tenList);
  print(ten(tenList, j));
  List tenList2 = ['1', 1, 7, true, 'Jalmari', 11, 'Junna', 30, true];
  print(tenList2);
  print(ten(tenList2, true));

  print('Exercise #11');
  List<int> elevenList = [d, e, f];
  print(elevenList);
  print(eleven(elevenList));

  print('Generator functions #1.');
  var firstGenList = <int>[];
  for (var i in firtsGen()) {
    firstGenList.add(i);
  }
  print(firstGenList);

  print('Generator functions #2.');
  var secondGenList = <int>[];
  for (var i in secondGen(35)) {
    secondGenList.add(i);
  }
  print(secondGenList);

  print('Generator functions #3.');
  var threeList = <int>[];
  var threeSum = 1;
  for (var i in threeGen(12)) {
    threeSum = i * i;
    threeList.add(threeSum);
  }
  print(threeList);

  print('Generator functions #4.');
  List<int> fourGenList = [];
  for (var i in fourGen(100)) {
    fourGenList.add(i);
  }
  print(fourGenList);

  List<double> fourGenList2 = [];
  for (var i in fourGen2(10)) {
    fourGenList2.add(i);
  }
  print(fourGenList2);

  List<double> fourGenList3 = [];
  for (var i in fourGen3(1)) {
    i = double.parse(i.toStringAsFixed(2));
    fourGenList3.add(i);
  }
  print(fourGenList3);
}

//
// 1
dynamic first(int a, int b, int c) {
  if (a > b && a > c && c < b) {
    return 'Var a Max value $a. \nVar c Min value $c.';
  } else if (a > b && a > c && b < c) {
    return 'Var a Max value $a. \nVar b Min value $b.';
  } else if (b > a && b > c && c < a) {
    return 'Var b Max value $b. \nVar c Min value $c.';
  } else if (b > a && b > c && a < c) {
    return 'Var b Max value $b. \nVar a Min value $a.';
  } else if (c > a && c > b && a < b) {
    return 'Var c Max value $c. \nVar a Min value $a.';
  } else if (c > a && c > b && b < a) {
    return 'Var c Max value $c. \nVar b Min value $b.';
  } else if (a == b) {
    return 'Value a & b $a';
  } else if (a == c) {
    return 'Value a & c $a';
  } else if (b == c) {
    return 'Value b & c $b';
  }
}

void first1(int a, int b, int c) {
  if (a > b && a > c && c < b) {
    print('Var a Max value $a. \nVar c Min value $c.');
  } else if (a > b && a > c && b < c) {
    print('Var a Max value $a. \nVar b Min value $b.');
  } else if (b > a && b > c && c < a) {
    print('Var b Max value $b. \nVar c Min value $c.');
  } else if (b > a && b > c && a < c) {
    print('Var b Max value $b. \nVar a Min value $a.');
  } else if (c > a && c > b && a < b) {
    print('Var c Max value $c. \nVar a Min value $a.');
  } else if (c > a && c > b && b < a) {
    print('Var c Max value $c. \nVar b Min value $b.');
  } else if (a == b) {
    print('Value a & b $a');
  } else if (a == c) {
    print('Value a & c $a');
  } else if (b == c) {
    print('Value b & c $b');
  }
}

// 2
int second(List<int> secondList) {
  var secondSum = 0;
  for (var i in secondList) {
    secondSum = secondSum + i;
  }
  return secondSum;
}

// 3
int three(List<int> threeList) {
  var threeMulti = 1;
  for (var i in threeList) {
    threeMulti = threeMulti * i;
  }
  return threeMulti;
}

// 4
dynamic four(List<int> fourList) {
  var fourSet = fourList.toSet().toList();
  return fourSet;
}

// 5
// n!=1*2*..*n
// 3 = 1 * 2 * 3
int five(n) {
  var fiveSum = 1;
  for (var i = 1; i <= n; i++) {
    fiveSum = fiveSum * i;
  }
  return fiveSum;
}

// 6
dynamic six(List<int> sixListSet, int n) {
  var valueYes = 'Value $n is in the list.';
  var valueNot = 'Value $n is not in the list.';
  for (var i = 0; i < sixListSet.length; i++) {
    if (sixListSet[i] == n) {
      //print(i);
      return valueYes;
    }
  }
  return valueNot;
}

// 7
seven(List<int> sevenList) {
  for (var i = 0; i < sevenList.length; i++) {
    var valueClear = 'Index $i, value ${sevenList[i]}';
    if (i % 2 != 0) {
      print(valueClear);
    }
  }
}

// 8
dynamic eight(List<int> eightList) {
  var listReversed = eightList.reversed;
  return listReversed;
}

// 9
dynamic nine(List<int> nineList) {
  var indexList = nineList.length;
  print('Amount of numbers $indexList');

  var nineSum = 0;
  for (var i in nineList) {
    nineSum += i;
  }
  return nineSum / indexList;
}

// 10
dynamic ten(List tenList, n) {
  var tenValueOn = tenList.contains(n);
  //return tenValueOn;
  var times = 0;

  if (tenValueOn == true) {
    for (var i = 0; i < tenList.length; i++) {
      if (tenList[i] == n) {
        times += 1;
      }
    }
    return 'Value $n is in the list $times times.';
  }
  return 'Value $n is not in the list.';
}

// 11
// умножение с рекурсией multiplication
int eleven(List<int> elevenList) {
  if (elevenList.length <= 1) {
    return elevenList[0];
  } else {
    return elevenList[0] * eleven(elevenList.sublist(1));
  }
}

// Generator functions 1
Iterable<int> firtsGen() sync* {
  var i = 10;
  while (i <= 33) {
    yield i++;
  }
}

// Generator functions 2
Iterable<int> secondGen(int n) sync* {
  var i = 1;
  while (i < n) {
    if (i % 7 == 0) {
      yield i;
    }
    i++;
  }
}

// Generator functions 3
Iterable<int> threeGen(int n) sync* {
  var i = 5;
  while (i <= n) {
    yield i++;
  }
}

// Generator functions 4
Iterable<int> fourGen(int n) sync* {
  int i = 0;
  while (i < n) {
    yield i += 10;
  }
}

Iterable<double> fourGen2(double n) sync* {
  double i = 0.0;
  while (i < n) {
    yield i += 0.5;
  }
}

Iterable<double> fourGen3(double n) sync* {
  double i = 0.0;
  while (i < (n - 0.1)) {
    yield i += 0.1;
  }
}
