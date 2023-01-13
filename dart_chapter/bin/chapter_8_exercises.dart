import 'dart:io';
import 'dart:async';
import 'dart:math';

Future<void> main(List<String> args) async {
  int a = Random().nextInt(10);
  int b = Random().nextInt(10);
  int c = Random().nextInt(10);
  int d = Random().nextInt(10);
  multiplication() {
    return a * b;
  }

  add() {
    return c + d;
  }

  // выполняется вторым
  Future<int> multiNum = Future(multiplication);
  multiNum.then((value) {
    print('Result multiplication $a and $b => $value');
  });

  // выполняется первым
  Future<int> addNum = Future.microtask(add);
  addNum.then((value) {
    print('Result add $c and $d => $value');
  });

  // Напишите функцию для асинхронной записи данных в файл
  Future<dynamic> writeFile(String file, dynamic text) async {
    File writeText = File(file);
    IOSink writeOnlyAppend =
        writeText.openWrite(mode: FileMode.writeOnlyAppend);
    FileStat stat = writeText.statSync();
    writeOnlyAppend.writeln('$text\n$stat');
  }

  // var maa = 'Suomi';
  // writeFile('Suomi.txt', maa);
  // // var kaupunki = 'Helsinki';
  // // writeFile(kaupunki);

  // Future<dynamic> readFile(String name) async {
  //   File readText = File(name);
  //   readText.readAsString().then((value) {
  //     print(value);
  //   });
  // }

  // readFile('Suomi.txt');

  // // Stream для списков!!!
  // List<Object> liiga = [
  //   'HIFK',
  //   'HPK',
  //   'Ilves',
  //   'Jukurit',
  //   'JYP',
  //   'KalPa',
  //   'KooKoo',
  //   'Kärpät',
  //   'Lukko',
  //   'Pelicans',
  //   'SaiPa',
  //   'Sport',
  //   'Tappara',
  //   'TPS',
  //   'Ässät'
  // ];

  // Stream<Object> joukkue;
  // StreamSubscription<Object> joukkueSubscription;

  // joukkue = Stream.periodic(Duration(seconds: 1), ((count) => count));

  // joukkueSubscription = joukkue.listen((event) {
  //   for (var i = 0; i < liiga.length; i++) {
  //     if (i == event) {
  //       // print(liiga[i]);
  //       var liigaElement = liiga[i];
  //       writeFile('Liiga.txt', liigaElement);
  //     }
  //   }
  // });

  // Future.delayed(Duration(seconds: (liiga.length) * 3), (() {
  //   joukkueSubscription.cancel();
  // }));

  // controller
  StreamController<Object> joukkueKaupunkiContr = StreamController<Object>();
  StreamSubscription joukkueKaupunkiSub;

  List<Object> liigaKaupunki = [
    'Helsinki',
    'Hämeenlinna',
    'Tampere',
    'Mikkeli',
    'Jyväskylä',
    'Kuopio',
    'Kouvola',
    'Oulu',
    'Rauma',
    'Lahti',
    'Lappeenranta',
    'Vaasa',
    'Tampere',
    'Turku',
    'Pori'
  ];

  joukkueKaupunkiContr.add('liigaKaupunki');

  joukkueKaupunkiSub = joukkueKaupunkiContr.stream.listen((event) {
    print(event);
  });

  Future.delayed(Duration(seconds: 5), (() {
    joukkueKaupunkiSub.cancel();
    joukkueKaupunkiContr.close();
  }));
}
