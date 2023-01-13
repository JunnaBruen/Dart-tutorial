import 'dart:math';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

void main(List<String> args) async {
  print('Exerises #1.');
  print('CARS');
  var carZhiguli = Zhiguli('ВАЗ-2101', 'red', 1987);
  print(carZhiguli.model);
  print(carZhiguli.color);
  print(carZhiguli.release);
  print(carZhiguli.recorder());
  print(carZhiguli.motor);
  //carZhiguli.motor = true;
  print(carZhiguli.motor);
  print(carZhiguli.drive());
  print(carZhiguli.brake());
  print(carZhiguli.signal());
  print('*' * 10);
  var carVolvo = Volvo('Volvo XC60', 'Dark Silver', 2018);
  print(carVolvo.model);
  print(carVolvo.color);
  print(carVolvo.release);
  print(carVolvo.recorder());
  print(carVolvo.motor);
  carVolvo.motor = true;
  print(carVolvo.motor);
  print(carVolvo.drive());
  print(carVolvo.brake());
  print(carVolvo.signal());
  print('*' * 40);

  print('Exerises #2.');
  var personJunna = PersonCup('Junna', 'cup blue');
  //personJunna.complete = true;
  print(personJunna.complete);
  print(personJunna.completeCup());
  print('*' * 10);
  var personJari = PersonCup('Jari', 'cup green');
  //personJari.complete = true;
  print(personJari.complete);
  print(personJari.completeCup());
  print('*' * 40);

  print('Exerises #3.');
  var personMario = PersonThing('Mario', 'Large storage cabinet');
  print(personMario.nameMan);
  print(personMario.cupboard);
  print(personMario.cellCupboar);
  print(personMario.put('Costume', 'hanger'));
  print(personMario.put('shirt', 'hanger'));
  print(personMario.put('pants', 'hanger'));
  print(personMario.cellCupboar);
  print(personMario.put('boots', 'Box'));
  print(personMario.put('Sneakers', 'Box'));
  print(personMario.cellCupboar);
  print(personMario.put('puLLover', 'shelf'));
  print(personMario.put('TOWEL', 'shelf'));
  print(personMario.put('underwear', 'shelf'));
  print(personMario.put('t-shirt', 'shelf'));
  print(personMario.cellCupboar);
  print(personMario.take('TOWEL'));
  print(personMario.take('shirt'));
  print(personMario.take('pants'));
  print(personMario.take('boots'));
  print(personMario.cellCupboar);
  print('*' * 40);

  print('Exerises #4.');
  var barbell = FullBarbell();
  int weight = Random().nextInt(150);
  print(barbell.fullWeight);
  // barbell.fullWeight = 120;
  print(barbell._maxWeight);
  // barbell._maxWeight = 120;
  print(weight);
  print(barbell.weightValue(weight));
  print('*' * 40);

  print('Exerises #5.');
  var exchange = ExchangeCurrency();
  double amount = (Random().nextDouble() * 10).toInt().toDouble();
  print(exchange.conversion('usd', 'euro', amount));
  print(exchange.conversion('euro', 'usd', amount));
  print('*' * 40);

  print('Exerises #6.');
  var myText = File('file.txt');
  print('*' * 40);

  print('Exerises #7.');
  var garageAddThing = ThingGarage();
  List<String> randomStr = [
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
  var random = Random().nextInt(randomStr.length);
  String garageStr = randomStr[random];
  int garageInt = (Random().nextDouble() * 100).toInt();
  double garageDouble = Random().nextDouble();
  bool garageBool = Random().nextBool();
  print(garageAddThing.thingAdd(garageStr));
  print(garageAddThing.thingAdd(garageInt));
  print(garageAddThing.thingAdd(garageDouble));
  print(garageAddThing.thingAdd(garageBool));
  print(garageAddThing.thingAdd(garageStr));
  print(garageAddThing.thingAdd(garageInt));
  print(garageAddThing.thingAdd(garageDouble));
  print(garageAddThing.thingAdd(garageBool));
  print(garageAddThing.assorted);
  print('*' * 40);

  print('Exerises #8.');
  var counter1 = Counter('+');
  var counter2 = Counter('-');
  var boxCounter = counter1 + counter2;
  boxCounter.printBox();
  print('-' * 30);
  boxCounter + Counter('*');
  boxCounter + Counter('/');
  boxCounter.printBox();

  print('Exerises #9.');
  var enumList = CarFunction.values;
  print(enumList);
  for (var element in enumList) {
    print(element.name.toString());
  }

  print('Exerises #10.');
  var figureRectangle = FigureRectangle('rectangle', 30, 15);
  print(figureRectangle.printFigure());
  var figureSquare = FigureSquare('Square', 17);
  print(figureSquare.printFigure());
  var figureTriangle = FigureTriangle('Triangle', 50.9);
  print(figureTriangle.printFigure());
  var figureCircle = FigureCircle('Circle', 13.3);
  print(figureCircle.printFigure());
  print('*' * 40);

  print('Exerises #11.');
  print('chapter_5_exercise_11.dart');
  print('*' * 40);

  print('Exerises #12.');
  List geometricFigure = [
    figureRectangle.square,
    figureSquare.square,
    figureTriangle.square,
    figureCircle.square
  ];
  var figureList = FigureSquareMax(geometricFigure);
  print(figureList.geometricFigure);
  print(figureList.squareMax());
  print(figureList.geometricFigure);
  print('*' * 40);

  print('Exerises #13.');
  var equation = QuadraticEquation(a: 2, b: 3, c: 1);
  print(equation.count());

  var equationRoot = QuadraticRoot(a: 10, b: 300, c: 20);
  print(equationRoot.count());
  print('*' * 40);

  print('Exerises #14.');
  var aDivisor = CommonDivisor(a: 30, b: 90);
  print(aDivisor.divisor());
  print('*' * 40);

  print('Exerises #15.');
  var thingOnTable = TableThing();
  print(thingOnTable.putTable('cup'));
  print(thingOnTable.putTable('newspaper'));
  print(thingOnTable.putTable('plate'));
  print(thingOnTable.putTable('bread'));
  print(thingOnTable.putTable('spoon'));
  print(thingOnTable.thingTable);
  print(thingOnTable.takeTable('milk'));
  print(thingOnTable.takeTable('plate'));
  print(thingOnTable.thingTable);
}

// 1
abstract class Car {
  String model;
  String color;
  int release;
  //final bool _motorValue = false;
  //bool get motor => _motorValue;
  bool get motor;

  Car(this.model, this.color, this.release);

  recorder() {
    return 'Recording in progress.';
  }

  drive() {
    if (motor == false) {
      return 'The car is not running.';
    } else if (motor == true) {
      return 'The car started up.';
    }
  }

  brake() {
    bool trafficLight = Random().nextBool();
    if (trafficLight == true && motor == true) {
      return 'The traffic light is red!';
    } else if (trafficLight == false && motor == true) {
      return 'The traffic light is green.';
    } else {
      return 'This car is not running!';
    }
  }

  signal() {
    bool signal = Random().nextBool();

    if (signal == false && motor == true) {
      return 'Silence.';
    } else if (signal == true && motor == true) {
      return 'Bi! Bi-i-i.';
    } else {
      return 'This car doesn\'t run!';
    }
  }
}

class Zhiguli extends Car {
  Zhiguli(super.model, super.color, super.release);

  @override
  recorder() {
    return 'Registrar missing!';
  }

  // запрет на изменение значения переменной
  @override
  final bool motor = false;
}

class Volvo extends Car {
  Volvo(super.model, super.color, super.release);

  @override
  signal() {
    bool signal = Random().nextBool();

    if (signal == false) {
      return 'Silence.';
    } else if (signal == true) {
      return 'Tun. Tun. Tu-u-u-n!';
    }
  }

  @override
  bool motor = false;
}

// 2
abstract class Cup {
  String cup;
  bool get complete;

  Cup(this.cup);

  completeCup() {
    if (complete == false) {
      return 'The cup is empty.';
    } else if (complete == true) {
      return 'Cup full.';
    }
  }
}

abstract class HumanDrink {
  String name;

  HumanDrink(this.name);

  drink() {}
}

class PersonCup implements HumanDrink, Cup {
  @override
  String name;

  @override
  String cup;

  // запрет на изменение значения переменной
  @override
  final bool complete = Random().nextBool();

  PersonCup(this.name, this.cup);

  @override
  drink() {
    return '$name drinking tea from a $cup.';
  }

  @override
  completeCup() {
    if (complete == false) {
      return 'The cup is empty.';
    } else if (complete == true) {
      //return 'Cup full.';
      return drink();
    }
  }
}

// 3
// класс Шкаф
// несколько систем хранения (список или таблица): полка, вешалка, ящик
// пользователь кладёт вещи
// пользователь берёт вещи
abstract class CupboardThing {
  String cupboard;

  Map<String, List<String>> cellCupboar = {
    'shelf': [],
    'box': [],
    'hanger': [],
  };

  CupboardThing(this.cupboard);
}

abstract class HumanThing {
  String nameMan;

  HumanThing(this.nameMan);

  put(String thing, String cell) {}

  take(String thing) {}
}

class PersonThing implements HumanThing, CupboardThing {
  @override
  Map<String, List<String>> cellCupboar = {
    'shelf': [],
    'box': [],
    'hanger': [],
  };

  @override
  String cupboard;

  @override
  String nameMan;

  PersonThing(this.nameMan, this.cupboard);

  @override
  put(String thing, String cell) {
    thing = thing.toLowerCase();
    cell = cell.toLowerCase();

    cellCupboar.forEach((key, value) {
      if (cell == key) {
        value.add(thing);
      }
    });

    return '$nameMan put a ${thing.toUpperCase()} in a ${cupboard.toLowerCase()} on a ${cell.toLowerCase()}.';
  }

  @override
  take(String thing) {
    thing = thing.toLowerCase();
    var cellCupboarCopy = Map<String, List<String>>.from(cellCupboar);

    cellCupboarCopy.forEach((key, value) {
      for (var i = 0; i < key.length; i++) {
        for (var j = 0; j < value.length; j++) {
          if (thing == value[j]) {
            value.remove(thing);
          }
        }
      }
    });

    return '$nameMan take a ${thing.toUpperCase()} in a ${cupboard.toLowerCase()}.';
  }
}

// 4
abstract class Barbell {
  final String nameBarbell = 'Barbell';
  final int _maxWeight;

  Barbell([this._maxWeight = 100]);

  int get fullWeight {
    return _maxWeight;
  }
}

abstract class BarbellWeight {
  final String nameBarbellWeight = 'Barbell weight';
  int get weight;

  weightValue(weight) {}
}

class FullBarbell implements Barbell, BarbellWeight {
  @override
  final String nameBarbell = 'Barbell';
  @override
  final String nameBarbellWeight = 'Barbell weight';

  @override
  final int _maxWeight;

  @override
  int get fullWeight {
    return _maxWeight;
  }

  @override
  int get weight {
    throw UnimplementedError();
  }

  @override
  weightValue(weight) {
    if (weight > _maxWeight) {
      return '$nameBarbell BROKE!!!';
    } else {
      return 'Start your workout!';
    }
  }

  FullBarbell([this._maxWeight = 100]);
}

// 5
abstract class ConversionCurrency {
  String usd;
  double get usdValue;
  String euro;
  double get euroValue;

  ConversionCurrency(this.usd, this.euro);

  conversion(String fromCurrency, String inCurrency, double amount) {}
}

class ExchangeCurrency implements ConversionCurrency {
  @override
  String usd = 'usd';

  @override
  double usdValue = 1;

  @override
  String euro = 'euro';

  @override
  double euroValue = 1.2;

  ExchangeCurrency();

  @override
  conversion(String fromCurrency, String inCurrency, double amount) {
    fromCurrency = fromCurrency.toLowerCase();

    double result = 0.0;
    if (fromCurrency == 'usd') {
      result = (usdValue / euroValue) * amount;
      result = double.parse(result.toStringAsFixed(2));
      return '$amount $fromCurrency => $inCurrency = $result';
    } else if (fromCurrency == 'euro') {
      result = ((euroValue / usdValue) * amount);
      result = double.parse(result.toStringAsFixed(2));
      return '$amount $fromCurrency => $inCurrency = $result';
    }
  }
}

// 6
class File {
  String? name;

  File(String name);

  readFile() {
    
  }

}

// 7
abstract class Garage<T> {
  List<T> get assorted;

  Garage();

  thingAdd(thing) {}
}

class ThingGarage<T> implements Garage {
  @override
  List<T> assorted = [];

  ThingGarage();

  @override
  thingAdd(thing) {
    assorted.add(thing);
    return 'Value $thing added to list assorted.';
  }
}

// 8
class BoxCounter {
  List<Counter> items;

  BoxCounter(this.items);

  printBox() {
    for (var element in items) {
      print(element.name);
    }
  }

  operator +(Counter number) {
    items.add(number);
  }
}

class Counter {
  final String name;

  Counter(this.name);

  BoxCounter operator +(Counter otherNumber) {
    return BoxCounter([this, otherNumber]);
  }
}

// 9
enum CarFunction {
  stop,
  drive,
  turn,
}

// 10
abstract class Figure {
  final String name;

  Figure(this.name);

  _descriptionFigure() {}

  _squareFigure() {}

  printFigure() {
    var print = '${_descriptionFigure()} ${_squareFigure()}.';
    return print;
  }
}

// прямоугольник
class FigureRectangle implements Figure {
  @override
  final String name;

  double leigth = 0.0;
  double width = 0.0;

  double square = 0.0;

  FigureRectangle(this.name, this.leigth, this.width);

  @override
  _descriptionFigure() {
    return '${name.toUpperCase()}: leigth $leigth, width $width.';
  }

  @override
  _squareFigure() {
    square = leigth * width;
    return 'Square ${name.toLowerCase()} = $square';
  }

  @override
  printFigure() {
    var print = '${_descriptionFigure()} ${_squareFigure()}.';
    return print;
  }
}

// квадрат
class FigureSquare implements Figure {
  @override
  final String name;

  double leigth = 0.0;
  double width = 0.0;
  double side = 0.0;

  double square = 0.0;

  FigureSquare(this.name, this.side)
      : leigth = side,
        width = side;

  @override
  _descriptionFigure() {
    return '${name.toUpperCase()}: side $side.';
  }

  @override
  _squareFigure() {
    square = side * side;
    return 'Square ${name.toLowerCase()} = $square';
  }

  @override
  printFigure() {
    var print = '${_descriptionFigure()} ${_squareFigure()}.';
    return print;
  }
}

// правильный треугольник
class FigureTriangle implements Figure {
  @override
  final String name;

  double leigth = 0.0;
  double width = 0.0;
  double side = 0.0;

  double square = 0.0;

  FigureTriangle(this.name, this.side)
      : leigth = side,
        width = side;

  @override
  _descriptionFigure() {
    return '${name.toUpperCase()}: side $side.';
  }

  @override
  _squareFigure() {
    // sPerim - semiperimeter
    var sPerim = (side + side + side) / 2;
    square = sqrt(sPerim * (sPerim - side) * (sPerim - side) * (sPerim - side));
    square = double.parse(square.toStringAsFixed(2));
    return 'Square ${name.toLowerCase()} = $square';
  }

  @override
  printFigure() {
    var print = '${_descriptionFigure()} ${_squareFigure()}.';
    return print;
  }
}

// круг
class FigureCircle implements Figure {
  @override
  final String name;

  double radius = 0.0;
  double square = 0.0;

  FigureCircle(this.name, this.radius);

  @override
  _descriptionFigure() {
    return '${name.toUpperCase()}: side $radius.';
  }

  @override
  _squareFigure() {
    // pi - переменная math
    // const double pi = 3.1415926535897932;
    var exponent = pow(radius, 2);
    square = pi * exponent;
    square = double.parse(square.toStringAsFixed(2));
    return 'Square ${name.toLowerCase()} = $square';
  }

  @override
  printFigure() {
    var print = '${_descriptionFigure()} ${_squareFigure()}.';
    return print;
  }
}

// 11
// chapter_5_exercise_11.dart

// 12
class FigureSquareMax {
  List geometricFigure;

  FigureSquareMax(this.geometricFigure);

  squareMax() {
    List<dynamic> _copy = [...geometricFigure];
    _copy.sort();
    var maxNum = _copy.last;
    return maxNum;
  }
}

// 13
// ax2 + bx + c = 0
class QuadraticEquation {
  double a;
  double b;
  double c;

  QuadraticEquation({required this.a, required this.b, required this.c});

  count() {
    if (a == 0) {
      return '"a" can\'t be 0!';
    } else {
      var x;
      var result = '($a * (x * x)) + ($b * x) + $c = 0';
      return result;
    }
  }
}

// x = (-b +- √ ((b * b) - 4 * a * c)) / 2 * a
class QuadraticRoot {
  double a;
  double b;
  double c;
  // var x;
  // var root = x;

  QuadraticRoot({required this.a, required this.b, required this.c});

  count() {
    if (a == 0) {
      return '"a" can\'t be 0!';
    } else {
      var d = (b * b) - (4 * a * c);
      var sqrtD = sqrt(d);
      var root1 = (-b + sqrtD) / (2 * a);
      root1 = double.parse(root1.toStringAsFixed(2));
      var root2 = (-b - sqrtD) / (2 * a);
      root2 = double.parse(root2.toStringAsFixed(2));
      var roots = 'X1 = $root1. X2 = $root2.';
      print(d);

      if (d < 0) {
        return 'There is no solution!';
      } else if (d == 0) {
        return root1;
      } else if (d > 0) {
        return roots;
      }
    }
  }
}

// 14
class CommonDivisor {
  int a;
  int b;

  CommonDivisor({required this.a, required this.b});

  divisor() {
    int first = 0;
    int second = 0;
    var resultMin = 0;
    var resultMax = 0;
    List<int> firstList = [];
    List<int> secondList = [];

    if (a > b) {
      first = a;
      second = b;
    } else if (b > a) {
      first = b;
      second = a;
    }

    // print(a);
    // print(b);
    // print(first);
    // print(second);

    for (var i = 1; i < first; i++) {
      if (first % i == 0) {
        firstList.add(i);
      }
    }

    // print(firstList);

    for (var i = 1; i < second; i++) {
      if (second % i == 0) {
        secondList.add(i);
      }
    }

    Set<int> firtsSet = firstList.toSet();
    Set<int> secondSet = secondList.toSet();

    print(firtsSet);
    print(secondSet);

    Set<int> resultSet = firtsSet.intersection(secondSet);
    resultSet.remove(1);

    // print(resultSet);

    resultMin = resultSet.first;
    resultMax = resultSet.last;

    return 'Least Common Divisor of numbers $a and $b: $resultMin (except 1). \nGreatest Common Divisor of numbers $a and $b: $resultMax.';
  }
}

// 15
class TableThing {
  List<String> thingTable = [];

  TableThing();

  putTable(String thing) {
    thing = thing.toLowerCase();

    thingTable.add(thing);

    return '${thing.toUpperCase()} put on the table.';
  }

  takeTable(String thing) {
    thing = thing.toLowerCase();

    thingTable.contains(thing);

    if (thingTable.contains(thing) == true) {
      thingTable.remove(thing);
      return '${thing.toUpperCase()} taken on the table.';
    } else {
      return '${thing.toUpperCase()} are not on the table...';
    }
  }
}
