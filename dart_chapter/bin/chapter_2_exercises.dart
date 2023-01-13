import 'dart:math';

void main(List<String> arguments) {
  // 1
  print('Exercise #1');
  String one =
      'Представим ситуацию, что у нас имеется вложенный цикл (цикл в цикле).';
  for (var i = 0; i < one.length; i++) {
    print(one[i]);
  }
  print(one);

  var iOne = 0;
  while (iOne < one.length) {
    print(one[iOne]);
    iOne++;
  }
  print(one);

  // 2
  print('Exercise #2');
  for (var i = 23; i <= 35; i++) {
    print('for $i');
  }

  var two = 23;
  while (two <= 35) {
    print('while $two');
    two++;
  }

  var twoList = <int>[for (var i = 23; i <= 35; i++) i];
  for (var j in twoList) {
    print('for-in $j');
  }

  // 3
  print('Exercise #3');
  List<int> three1 = [];
  print(three1);
  for (var i = 0; i <= 99; i++) {
    three1.add(i);
  }
  print(three1);

  var three2 = <int>[for (var i = 0; i <= 99; i++) i];
  print(three2);
  /*for (var j in three2) {
    three2[j];
  }
  print(three2);*/

  // 4
  print('Exercise #4');
  List<int> four = [];
  print(four);
  for (var i = 0; i < three1.length; i++) {
    if (i % 5 == 0) {
      four.add(i);
    }
  }
  print(four);

  var four2 = {
    for (var i in four)
      if (i % 10 == 0) i
  };
  print(four2.toList());

  // 5
  print('Exercise #5');
  var five = [];
  for (var i = -35; i < 0; i++) {
    five.add(i);
  }
  print(five);

  var five1 = <int>[];
  // вывод индексов списка
  for (var i = 0; i < five.length; i++) {
    // здесь видно, что отсчёт ведется от -1 до -35 !!!
    //print(i);
    if (i % 3 == 0) {
      five1.add(five[i]);
    }
  }
  print(five1);

  var five2 = <int>[...five];
  print(five2);
  // вывод индексов списка
  for (var i = 0; i < five.length; i++) {
    if (i % 3 != 0) {
      five2.remove(five[i]);
    }
  }
  print(five2);

  List<int> five3 = [...five.reversed];
  List<int> five4 = [];
  //print(five3);
  //print(five4);

  for (var i = 0; i < five3.length; i++) {
    if (i % 3 == 0) {
      five4.add(five3[i + 1]);
    }
  }
  print(five4.reversed);

  // 6
  print('Exercise #6');
  var a = ((Random().nextDouble() + 0.01) * 100).toInt();
  var b = ((Random().nextDouble() + 0.01) * 100).toInt();
  var c = ((Random().nextDouble() + 0.01) * 100).toInt();
  print('a $a \nb $b \nc $c');

  /*if (a > b && a > c) {
    print('var a Max value $a.');
  } else if (b > a && b > c) {
    print('var b Max value $b.');
  } else if (c > a && c > b) {
    print('var c Max value $c.');
  }

  if (a < c && a < b) {
    print('var a Min value $a.');
  } else if (b < a && b < c) {
    print('var b Min value $b.');
  } else {
    print('var c Min value $c.');
  }*/

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

  List six = [a, b, c];
  six.sort();
  print(six);

  // 7
  print('Exercise #7');
  List<int> seven = [4, 5, 6, 7, 2, 1, 2, 3, 4];
  print(seven.reversed);

  for (var i = seven.length - 1; i > 0; i--) {
    print(seven[i]);
  }

  // 8
  print('Exercise #8');
  List<int> eight = [10, 9, 22, 34, 19, ...seven];
  List<int> eight2 = [];
  for (var i in eight) {
    if (i != 2 && i != 6) {
      eight2.add(i);
    }
  }
  print(eight2);

  // 9
  print('Exercise #9');
  List<int> nine = [...seven];
  var nine2 = 0;
  for (var i = 0; i < nine.length; i++) {
    nine2 = nine[i] + nine2;
  }
  print(nine2);

  var nine3 = 0;
  for (var i in nine) {
    nine3 = i + nine3;
  }
  print(nine3);

  // 10
  print('Exercise #10');
  List ten = [4, 5, 6, 7, 30, 22, 2, 39, 41];
  var ten2 = 0;
  for (var i = 0; i < ten.length; i++) {
    ten2 = ten[i] + ten2;
  }
  var ten3 = ten2 / ten.length;
  print(ten3);

  // 11
  print('Exercise #11');
  List<int> eleven = [1, 3, 4, 1, 4, 5, 7, 3, 8, 5];
  var eleven2 = eleven.toSet();
  var eleven3 = eleven2.toList();
  print(eleven3);

  var eleven4 = eleven.toSet().toList();
  print(eleven4);

  // 12
  print('Exercise #12');
  String finnishQuote = 'Uskalla hypätä, siivet kasvavat pudotessa.';
  // привести к нижнему регистру
  // убрать посторные знаки
  // убрать символы и пробелы
  String finnishQuoteCase = finnishQuote
      .toLowerCase()
      .replaceAll('.', '')
      .replaceAll(',', '')
      .replaceAll(' ', '');

  //print(finnishQuoteCase);

  List finnishLetter = [];
  // добавить знаки строки в список
  for (var i = 0; i < finnishQuoteCase.length; i++) {
    finnishLetter.add(finnishQuoteCase[i]);
  }
  //print(finnishLetter);

  // убираем повторные знаки
  // возвращает в список
  var finnishLetterClear = finnishLetter.toSet().toList();
  print(finnishLetterClear);

  // рандомный выбор индекса в листе, который будет проходит через цикл
  var ranNum = 0;
  for (var i = 0; i < finnishLetterClear.length; i++) {
    ranNum = Random().nextInt(i + 1);
  }
  print(ranNum);
  print(finnishLetterClear[ranNum]);

  var letter = finnishLetterClear[ranNum];
  switch (letter) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
    case 'y':
    case 'å':
    case 'ä':
    case 'ö':
      print('$letter: this is the vowel sound of the Finnish alphabet.');
      break;
    case 'b':
    case 'c':
    case 'd':
    case 'f':
    case 'g':
    case 'h':
    case 'j':
    case 'k':
    case 'l':
    case 'm':
    case 'n':
    case 'p':
    case 'q':
    case 'r':
    case 's':
    case 't':
    case 'v':
    case 'z':
    case 'x':
      print('$letter: this is a consonant sound of the Finnish alphabet.');
      break;
    default:
      print('$letter: this sound does not exist in the Finnish alphabet.');
  }

  // 13
  print('Exercise #13');
  List<int> thirteen = [4, 5, 6, 7, 2, 1, 2, 3, 4];
  var thirteenMap = thirteen.asMap();
  print(thirteenMap);

  List<int> thirteen2 = [4, 5, 6, 7, 2, 1, 2, 3, 4];
  thirteen2.forEach(((element) {
    print('Key ${thirteen2.indexOf(element)} => value $element');
  }));

  List<int> thirteen3 = [40, 50, 60, 70];
  for (var element in thirteen3) {
    print('Key ${thirteen3.indexOf(element)} => value $element');
  }
  /*for (var i = 0; i < thirteen.length; i++) {
    // индекс
    //print('Index $i');
  }

  for (var i = 0; i < thirteen.length; i++) {
    // значение
    //print(thirteen[i]);
  }
  */

  // 14
  print('Exercise #14');
  int fourteen = Random().nextInt(5);
  switch (fourteen) {
    case 0:
      print('Value: 0');
      break;
    case 1:
      print('Value: 1');
      break;
    case 2:
      print('Value: 2');
      break;
    case 3:
      print('Value: 3');
      break;
    case 4:
      print('Value: 4');
      break;
    case 5:
      print('Value: 5');
      break;
    default:
      print('Some other number');
  }

  //print(fourteen);
}
