import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'dart:math';

void main(List<String> args) async {
  print('Exerises #1.');
  var thingToCupboard = Cupboard('New cupboard');
  print(thingToCupboard.put('Short', 'box'));
  print(thingToCupboard.put('t-shirt', 'box'));
  print(thingToCupboard.put('puLLover', 'shelf'));
  print(thingToCupboard.put('pants', 'shelf'));
  print(thingToCupboard.put('Dress', 'hanger'));
  print(thingToCupboard.put('costum', 'hanger'));

  // создание нового файла
  var fileThing = File('My thing.json');

  // переменная кодировки в JSON с отступом
  var coder = JsonEncoder.withIndent(' ');

  // запись в файл и вывод
  fileThing.writeAsStringSync(coder.convert(thingToCupboard.cellCupboard));
  print('запись в файл и вывод');
  print(fileThing.readAsStringSync());

  // чтение данных из JSON
  print('чтение данных из JSON');
  var fromFileThing = File('My thing.json');
  fromFileThing.readAsStringSync();
  print(fromFileThing.readAsStringSync());

  // загрузка данных из JSON
  print('загрузка данных из JSON');
  var thingLoad = File('My thing.json');

  print('Exerises #2.');

  print('Exerises #3.');
  var volvo = Car('Volvo');
  print(volvo.car());
}

class Cupboard {
  final String name;

  Cupboard(this.name);

  Map<String, List<String>> cellCupboard = {
    'shelf': [],
    'box': [],
    'hanger': [],
  };

  put(String thing, String cell) {
    thing = thing.toLowerCase();
    cell = cell.toLowerCase();

    cellCupboard.forEach((key, value) {
      if (cell == key) {
        value.add(thing);
      }
    });

    return '${thing.toUpperCase()} on the $cell.';
  }
}

class Car {
  String name;

  Car(this.name);

  String get _car {
    return name.toUpperCase();
  }

  car() {
    var motor = Random().nextBool();

    stop() {
      return 'The $_car stopped.';
    }

    movement() {
      String left = 'The $_car is turning left.';
      String right = 'The $_car is turning right.';
      String overclocking = 'The $_car is accelerating!';

      List states = ['left', 'right', 'overclocking'];
      var state = Random().nextInt(2);

      for (var i = 0; i < states.length; i++) {
        if (i == state) {
          if (states[state] == 'left') {
            return left;
          } else if (states[state] == 'right') {
            return right;
          } else if (states[state] == 'overclocking') {
            return overclocking;
          }
        }
      }
    }

    writeStates(state) {
      File carInfo = File('Car states.txt');
      IOSink writeOnlyAppend =
          carInfo.openWrite(mode: FileMode.writeOnlyAppend);
      FileStat stat = carInfo.statSync();
      Future<DateTime> lastAccessed = carInfo.lastAccessed();
      lastAccessed.then((value) {
        writeOnlyAppend.writeln('$state\n$stat \n');
      });
    }

    if (motor == false) {
      writeStates(stop());
      return stop();
    } else if (motor == true) {
      writeStates(movement());
      return movement();
    }
  }
}
