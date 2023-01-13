import 'dart:io';
import 'dart:convert';
import 'dart:async';

void main(List<String> args) async {
  // создание, чтение и запись файла
  // файл создаётся в корневой папке проекта
  var myFile = File('file.txt');
  myFile.writeAsStringSync('Hey. Minä olen Junna.');
  print(myFile.readAsStringSync());

  // открытия файла для чтения и записи в конец
  myFile.writeAsStringSync('Olen 35 vuotta.', mode: FileMode.append);
  print(myFile.readAsStringSync());

  List<String> textList = [
    'Hey. Minä olen Junna.',
    'Olen 35 vuotta.',
    'Asun Pietarissa.',
    'Opiskelen suomea.',
    'Myös opiskelen ohjelmoimista.'
  ];

  // перезапись файла
  var write = myFile.openWrite(mode: FileMode.write);
  write.writeAll(textList, '\n');
  print(myFile.readAsStringSync());

  // запись файла
  var writeOnly = myFile.openWrite(mode: FileMode.writeOnly);
  writeOnly.writeAll(textList, '\n');
  print(myFile.readAsStringSync());

  // запись в конец файла
  var writeOnlyAppend = myFile.openWrite(mode: FileMode.writeOnlyAppend);
  writeOnlyAppend.writeAll(textList, '\n');
  print(myFile.readAsStringSync());

  // большой объём файлов, UTF
  // Stream
  var myFile2 = File('file2.txt');
  List<String> textList2 = [
    'Minä olen Junna.',
    'Olen 35 vuotta.',
    'Asun Pietarissa.',
    'Opiskelen suomea.',
    'Myös opiskelen ohjelmoimista.',
    'Minulla on pari pienea kanavaa YouTubessa.'
  ];

  for (var element in textList2) {
    myFile2.writeAsStringSync('$element ', mode: FileMode.append);
  }

  Stream<String> lines =
      myFile2.openRead().transform(utf8.decoder).transform(LineSplitter());

  try {
    await for (var line in lines) {
      print(line);
    }
    print('File closed');
  } catch (e) {
    print('Error: $e');
  }

  // методы
  // проверка наличия файла
  final myFile3 = File('../file.txt');
  print(myFile3.existsSync());

  // текущее состояние файла
  final myFile4 = File('file.txt');
  print(myFile4.statSync());

  // путь к текущему файлу
  final rootPath = Directory.current.path;
  print(rootPath);

  // удаление файла
  var myFile5 = File('file3.txt');
  myFile5.writeAsStringSync('Hey. Minä olen Junna.');
  print(myFile5.readAsStringSync());
  print(myFile5.existsSync());
  myFile5.deleteSync();
  print(myFile5.existsSync());

  // создание файла без записи
  final myFile6 = File('file3.txt');
  print(myFile6.existsSync());
  myFile6.createSync(recursive: true);
  print(myFile6.existsSync());

  // получение размера файла
  print(myFile.lengthSync());
  print(myFile5.lengthSync());
  print(myFile6.lengthSync());

  // время последней модификации
  print(myFile.lastModifiedSync());
}