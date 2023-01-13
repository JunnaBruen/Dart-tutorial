void main(List<String> arguments) {
  print('Hello world!');

  // ТИПЫ ДАННЫХ
  // ЧИСЛА СТРОКИ
  int a = 1;
  int hex = 0xDEAFF;
  var b = 11;
  print(a);
  print(hex);
  print(b);

  double c = 2.1;
  var d = 2.2;
  var e = 1.42e5;
  print(c);
  print(d);
  print(e);

  num f = 3;
  num g = 3.1;
  print(f);
  print(g);

  String str1 = 'Всё будет хорошо!';
  var str2 = "Всё будет очень хорошо!";
  var str3 = '''Всё будет очень хорошо!
  Вот увидишь.''';
  print(str1);
  print(str2);
  print(str3);
  print(str1[0]);

  // ignore: prefer_interpolation_to_compose_strings
  var str4 = 'У' + str1.substring(1);
  // var str4 = 'У${str1.substring(1)}';
  print(str4);

  // ignore: prefer_interpolation_to_compose_strings
  var str5 = 'В' + str4.substring(1, 9);
  // var str5 = 'В${str4.substring(1, 9)}';
  print(str5);

  print(str5.length);

  var str6 = str1.toUpperCase();
  print(str1.toUpperCase());
  print(str6);

  // ПЕРЕВОД ДАННЫХ В ДРУГОЙ ТИП ДАННЫХ
  var strInt = int.parse('4');
  print(strInt);

  var strDou = double.parse('4.1');
  print(strDou);

  String str7 = 5.toString();
  print(str7);

  String str8 = strInt.toString();
  print(str8);

  String str9 = 5.1.toString();
  print(str9);

  String str10 = strDou.toString();
  print(str10);

  // ЛОГИЧЕСКИЕ ЗНАЧЕНИЯ
  bool bFalse = false;
  bool bTrue = true;
  print(bFalse);
  print(bTrue);

  // СПИСКИ
  List myList1 = [1, 2, 3];
  List<int> myList2 = [4, 5, 6];
  var myList3 = <int>[];
  print(myList1);
  print(myList2);
  print(myList3);

  myList1[0] = 0;
  print(myList1);

  var myList4 = const [0, 1, 2];
  print(myList4);

  var myList5 = <int>[];
  myList5.add(4);
  print(myList5);

  myList5.addAll([1, 2, 5]);
  print(myList5);
  print(myList5.length);

  myList5.removeAt(0);
  print(myList5);

  print(myList5.contains(1));

  var myList6 = <int>[...myList5];
  print(myList6);

  var myList7 = <int>[1, 2, ...myList5];
  print(myList7);

  var myList8 = List<int>.filled(5, 0);
  print(myList8);

  myList8[0] = 10;
  print(myList8);

  var check = true;
  var myLiat9 = [
    'Привет',
    'Это список',
    'Из трёх строк',
    if (check) 'А это четвёртая строка'
  ];
  print(myLiat9);

  var myList10 = [1, 2, 3, 4, 5, 6, 7, 8];
  var myList11 = [for (var i in myList10) '#$i'];
  print(myList10);
  print(myList11);

  var myList12 = {
    for (var i in myList10)
      if (i % 2 == 0) i
  };
  print(myList12);

  // МНОЖЕСТВА Set
  var set1 = <int>{1, 2, 2, 3, 4, 5, 5, 5, 7, 8};
  Set<int> set2 = {1, 2, 2, 3, 4, 5, 5, 5, 7, 8};
  var set3 = <int>{};
  Set<int> set4 = {};
  print(set1);
  print(set2);
  print(set3);
  print(set4);

  var setList1 = <int>[1, 2, 2, 3, 4, 5, 5, 5, 6, 7, 7, 8, 9, 9];
  print(setList1);

  var set5 = Set<int>.from(setList1);
  print(set5);

  var set6 = Set<int>.from(setList1).toList();
  print(set6);

  var setStr1 = 'Всё будет хорошо!';
  var set7 = Set<String>.from(setStr1.split(''));
  print(set7);

  var set8 = Set<String>.from(setStr1.toLowerCase().split('').toList());
  print(set8);

  set1.add(0);
  print(set1);

  set1.remove(1);
  print(set1);

  var set9 = <int>[1, 1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 8, 9];
  print(set9);

  var set10 = {
    for (var i in set9)
      if (i % 2 == 0) i
  };
  print(set10);

  var set11 = <int>{3, 6, 14, 16, 33, 72, 89};
  var set12 = <int>{1, 4, 20, 33, 45, 72, 88};
  print(set11);
  print(set12);

  print(set11.union(set12));
  print(set11.difference(set12));
  print(set12.difference(set11));
  print(set11.intersection(set12));

  var set13 = set11.union(set12);
  print(set13);

  print(set11.contains(14));
  print(set12.contains(14));

  var myList13 = [10, 20];
  var myList14 = myList13;
  print(myList13);
  print(myList14);

  myList14.add(40);
  myList13.add(20);
  print(myList13);
  print(myList14);

  var myList15 = <int>[1, 2, 3, 4];
  var myList16 = List.from(myList15);
  myList16.add(5);
  print(myList15);
  print(myList16);

  var myList17 = [...myList15];
  myList17.add(6);
  print(myList17);

  // ignore: prefer_spread_collections
  var myList18 = []..addAll(myList15);
  myList18.add(7);
  print(myList18);

  var myList19 = <int>[10, 20, 30, 40];
  print(myList19);
  var myList20 = List.from(myList19);
  // myList20[0].add(50);
  print(myList19);
  print(myList20);

  // ТАБЛИЦЫ Map
  var myMap1 = <String, String>{
    'one': 'Всё',
    'two': 'будет',
    'three': 'хорошо'
  };
  print(myMap1);

  var myMap2 = <int, String>{
    1: 'Всё',
    2: 'будет',
    3: 'хорошо',
  };
  print(myMap2);

  // ignore: prefer_collection_literals
  var myMap3 = Map<String, int>();
  var myMap4 = <String, int>{};
  print(myMap3);
  print(myMap4);

  var myMap5 = <int, String>{
    1: 'Всё',
    2: 'будет',
    3: 'хорошо',
  };
  myMap5[3] = 'отлично';
  print(myMap5);
  myMap5[4] = 'каждый';
  myMap5[5] = 'день';
  print(myMap5);

  var myMap6 = <int, String>{
    1: 'a',
    2: 'b',
    3: 'c',
    4: 'd',
    5: 'e',
    6: 'f',
  };
  print(myMap6);
  print(myMap6.length);
  print(myMap6.keys.toList());
  print(myMap6.values.toList());
  myMap6.remove(6);
  print(myMap6);
  myMap6.removeWhere((key, value) => (key % 2 != 0));
  print(myMap6);

  // Runes и Symbol
  var myRune = '\u{1f606}';
  print(myRune);

  var mySymbol = #myAPI;
  print(mySymbol);

  // ДИНАМИЧЕСКИЙ ТИП ДАННЫХ
  dynamic myDin = 3;
  print(myDin);
  myDin = 4.3;
  print(myDin);
  myDin = 'Dart';
  print(myDin);
  myDin = [3, 4.3, 'Dart'];
  print(myDin);

  List<dynamic> myDinList1 = [30, 10.3, 'Dart'];
  var myDinList2 = [3, 4.3, 'Dart'];
  print(myDinList1);
  print(myDinList2);

  myDinList1[0] = 15;
  print(myDinList1);

  myDinList2.add('programm');
  print(myDinList2);

  var myMap7 = <dynamic, dynamic>{
    1: 'Dart',
    'programm': true,
    3: [1, 3, 4.5],
  };
  print(myMap7);

  // МОДИФИКАТОРЫ final, const, late
  // может быть изменён один раз
  // не может быть объявлен в верхнем уровне кода
  final int myMod1;
  //final myMod1;
  myMod1 = 4;
  print(myMod1);

  // не может быть изменён
  const myMod2 = 7;
  print(myMod2);

  var myConst1 = const [];
  final myConst2 = const [];
  const myConst3 = [];
  print(myConst1);
  print(myConst2);
  print(myConst3);

  myConst1 = [1, 2, 3];
  print(myConst1);

  // может быть изменён
  // может быть объявлен в верхнем уровне кода
  late String myMod3 = 'Dart';
  print(myMod3);
  myMod3 = 'programm';
  print(myMod3);
  myMod3 = 'Dart programm';
  print(myMod3);

  // Null БЕЗОПАСТНОСТЬ
  // ? переменная НЕ ссылается на NULL
  // ?? переменная ссылается на NULL
  // ! переменная может сылаться на NULL, но она ссылается на экземпляр класса
  int? myNull1;
  print(myNull1);

  // ignore: avoid_init_to_null
  String? myNull2 = null;
  print(myNull2);
}
