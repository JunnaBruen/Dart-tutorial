import 'dart:io';
import 'dart:math';

import 'package:chapter_4_library/export_library_chapter_4.dart';

void main(List<String> args) {
  print('Library #1.');

  //var a = (Random().nextDouble() * 10).toStringAsFixed(2);
  //var b = (Random().nextDouble() * 10).toStringAsFixed(2);
  //var c = (Random().nextDouble() * 10).toStringAsFixed(2);
  var a = double.parse((Random().nextDouble() * 10).toStringAsFixed(2));
  var b = double.parse((Random().nextDouble() * 10).toStringAsFixed(2));
  var c = double.parse((Random().nextDouble() * 10).toStringAsFixed(2));

  print('a = $a \nb = $b \nc = $c');
  print(numMax(a, b, c));

  print(numSum(a, b, c));

  print(numMul(a, b, c));

  print('Library #2.');
  List<String> alphabet = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];

  List<String> secondList = [];
  for (var i = 0; i < 13; i++) {
    var j = Random().nextInt(26);
    //print(alphabet[j]);
    secondList.add(alphabet[j]);
  }
  print(secondList);
  print(listSet(secondList));

  var numFact = a.toInt();
  print('Value $numFact => Factorial ${numFactorial(numFact)}');

  print(checkValue(secondList, 'y'));

  print('Library #3.');
  List<int> threeList = [];
  for (var i = 0; i < 10; i++) {
    var d = (Random().nextDouble() * 100).toInt();
    threeList.add(d);
  }
  print(threeList);
  print(divValue(threeList));

  List<int> threeList2 = [];
  for (var i = 0; i < 5; i++) {
    var d = (Random().nextDouble() * 10).toInt();
    threeList2.add(d);
  }
  print(threeList2);
  print(threeList2.length);
  print(midValue(threeList2));

  print('Library #4.');
  List<int> fourList = [];
  for (var i = 23; i <= 47; i++) {
    fourList.add(i);
  }
  print(fourList);
  print(fiveNum(fourList, 5));

  List<double> fourList2 = [];
  for (var i = 0.0; i < 1.0; i += 0.1) {
    i = double.parse(i.toStringAsFixed(2));
    fourList2.add(i);
  }
  print(fourList2);
  print(fiveDou(fourList2, 5));

  print('Library #5.');
  List<String> fiveList = [];
  for (var i = 0; i < 30; i++) {
    var j = Random().nextInt(26);
    //print(alphabet[j]);
    fiveList.add(alphabet[j]);
  }
  print(fiveList);
  print(fiveList);
  print(countValue(fiveList, 'y'));

  print(reverseList(alphabet));
}
