import 'dart:async';
import 'dart:math';
import 'dart:isolate';

Future<void> main(List<String> args) async {
  // // FUTURE
  // // очередь событий
  // Future(() {
  //   print('Event queue. First line => third place.');
  // });

  // Future(() {
  //   print('Event queue. Second line => fourth place.');
  // });

  // // очередь микрозадач
  // Future.microtask(() {
  //   print('Microtask queue. Third line => first place.');
  // });

  // Future.microtask(() {
  //   print('Microtask queue. Fourth line => second place.');
  // });

  // // АСИНХРОННОЕ ПРОГРАММИРОВАНИЕ
  // // метод then
  // int a = Random().nextInt(10);
  // int b = Random().nextInt(10);
  // addNumber() {
  //   return a + b;
  // }

  // resultPrint(value) {
  //   print('The result of the calculation through a separate function: $value');
  // }

  // var addNum = Future<int>(addNumber);
  // Future(() {
  //   print('Function in the code above, but output at the end.');
  // });
  // addNum.then((value) => print('Calculation result: $value'));
  // addNum.then(resultPrint);
  // print(
  //     'The function in the code is the last one, and it is displayed at the beginning.');

  // // цепочки из методов then
  // eventNumber() {
  //   return 'Random number';
  // }

  // var chainThen = Future<String>(eventNumber);

  // chainThen.then((value) {
  //   print('$value a => $a');
  //   print('$value b => $b');
  // }).then((value) => print('Result ${addNumber()}'));

  // // обработка исключений Future
  // sumRandom() {
  //   int sum = 0;
  //   for (var i = 0; i < a; i++) {
  //     sum += i;

  //     if (sum > 10) {
  //       throw ExceptionHandling();
  //     }
  //   }
  //   return sum;
  // }

  // var resultSum = Future<int>(sumRandom);
  // resultSum
  //     .then((value) => print('Result: $value. Method: catchError'))
  //     .catchError((onError) => print('CatchError: $onError'));

  // // обработка исключений Future с дополнительной проверкой
  // var resultSumAddition = Future<int>(sumRandom);
  // resultSumAddition
  //     .then((value) => print('Result: $value. Method: catchError test'))
  //     .catchError((onError) => print('CatchError test: $onError'),
  //         test: (error) => error is ExceptionHandling);

  // // выполнение действия при наличие ошибки метод whenComplete
  // var resultSumAction = Future<int>.delayed(Duration(seconds: a), sumRandom);

  // resultSumAction
  //     .then((value) =>
  //         print('Result: $value. Method: catchError test. Perform action.'))
  //     .catchError((onError) => print('CatchError test: $onError'),
  //         test: (error) => error is ExceptionHandling)
  //     .whenComplete(() => print('Perform action after $a seconds.'));

  // // async - асинхронность
  // // await - ждите
  // String call() {
  //   return 'Communication is excellent!';
  // }

  // Future compound() async {
  //   print('Connection in progress.');
  //   var connect = await call();
  //   print(connect);
  //   print('Successful connection.');
  // }

  // print('Phone dialing.');
  // compound();
  // print('Recruitment completed.');

  // print('Phone dialing.');
  // compound();
  // print('Recruitment completed.');

  // // исключения
  // String callExceptions() {
  //   throw 'Connection failed!!!';
  // }

  // Future compoundExceptions() async {
  //   print('Connection in progress.');
  //   try {
  //     print(callExceptions());
  //     print('Successful connection.');
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }

  // print('Phone dialing.');
  // compoundExceptions();
  // print('Recruitment completed.');

  // // поток Stream
  // int c = Random().nextInt(10);

  // Stream<int> numGenerator(value) async* {
  //   for (var i = 0; i < value; i++) {
  //     yield i;
  //   }
  // }

  // createGenerator(int c) async {
  //   var stream = numGenerator(c);
  //   stream.listen((event) {
  //     print(event);
  //   });
  // }

  // print('Start');
  // createGenerator(c);
  // print('Stop');

  // // итерация по списку в асинхронном режиме
  // List<int> randomList = [];
  // for (var i = 0; i < c; i++) {
  //   randomList.add(i);
  // }

  // streamIterable(List<int> name) {
  //   var stream = Stream.fromIterable(name);
  //   print('Start');
  //   stream.listen((event) {
  //     print(event);
  //   });
  //   print('Stop');
  // }

  // streamIterable(randomList);

  // // итерация по списку в синхронном режиме
  // streamIterableAsync(List<int> name) async {
  //   var stream = Stream.fromIterable(name);
  //   print('Start');
  //   await for (var element in stream) {
  //     print(element);
  //   }
  //   print('Stop');
  // }

  // streamIterableAsync(randomList);

  // // обработка исключений
  // Stream<int> numGeneratorError(value) async* {
  //   for (var i = 0; i < value; i++) {
  //     if (i >= 2) {
  //       throw Exception('Error');
  //     }
  //     yield i;
  //   }
  // }

  // createGeneratorError(int c) async {
  //   var stream = numGeneratorError(c);
  //   stream.listen((event) => print(event), onError: (e) => print(e));
  // }

  // print('Start');
  // createGeneratorError(c);
  // print('Stop');

  // // работа с экземпляром класса StreamController
  // final controller = StreamController<String>();
  // final subscription = controller.stream.listen((String message) {
  //   print(message);
  // });

  // controller.add('Hey!');
  // controller.add('Everything gonna be alright!');

  // //
  // print('Start');
  // var acceptor = CoinAcceptor();
  // var machine = CoffeeMachine(acceptor.dataStream);
  // acceptor.addCoin(11);
  // acceptor.addCoin(3);
  // acceptor.addCoin(17);
  // print('Stop');

  print('Start');
  var acceptorCoin = CoinAcceptorCoin();
  var machineCoin = CoffeeMachineCoin(acceptorCoin.dataStream);
  acceptorCoin.addCoin(Coin(35));
  print('Stop');

  // Isolate
  await createIsolate();
  print('Main: ${await sendReceive('Start!')}');
  print('Main: ${await sendReceive('1')}');
  print('Main: ${await sendReceive('2')}');
  print('Main: ${await sendReceive('3')}');
}

// обработка исключений Future
class ExceptionHandling implements Exception {
  // ? переменная может быть null
  final String? message;

  // [] необязательные данные
  ExceptionHandling([this.message]);

  @override
  String toString() {
    // вернуть message или строку
    // ?? или
    return message ?? 'ExceptionHandling';
  }
}

//
class CoinAcceptor {
  final _addCoin = StreamController<int>();
  Stream<int> get dataStream {
    return _addCoin.stream;
  }

  addCoin(int coin) {
    return _addCoin.add(coin);
  }
}

class CoffeeMachine {
  int coinValue = 0;

  CoffeeMachine(Stream<int> value) {
    value.listen(addCoin);
  }

  addCoin(int coin) {
    coinValue += coin;

    if (coinValue >= 30) {
      print('Cooking coffee!');
    } else {
      print('Not enough coins!!!');
    }

    print('Coin: $coinValue.');
  }
}

class Coin {
  final int value;
  Coin(this.value);
}

class CoinAcceptorCoin {
  final _addCoin = StreamController<Coin>();
  Stream<Coin> get dataStream {
    return _addCoin.stream;
  }

  addCoin(Coin coin) {
    return _addCoin.add(coin);
  }
}

class CoffeeMachineCoin {
  int coinValue = 0;

  CoffeeMachineCoin(Stream<Coin> value) {
    value.listen((coin) {
      coinValue += coin.value;

      if (coinValue >= 30) {
        print('Cooking coffee!');
      } else {
        print('Not enough coins!!!');
      }

      print('Coin: $coinValue.');
    });
  }
}

// Isolate
class IsolatesMessage<T> {
  final SendPort sender;
  final T message;

  IsolatesMessage({required this.sender, required this.message});
}

late SendPort isolateSendPort;
late Isolate isolate;

Future createIsolate() async {
  var receivePort = ReceivePort();
  isolate = await Isolate.spawn(
    echoCallbackFunction,
    receivePort.sendPort,
  );
  isolateSendPort = await receivePort.first;
}

Future<String> sendReceive(String send) async {
  var port = ReceivePort();
  isolateSendPort
      .send(IsolatesMessage<String>(sender: port.sendPort, message: send));
  return await port.first;
}

echoCallbackFunction(SendPort sendPort) {
  var receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);

  receivePort.listen((message) {
    var isolateMessage = message as IsolatesMessage<String>;
    print('Isolate: ${isolateMessage.message}');
    isolateMessage.sender.send(isolateMessage.message);
  });
}
