import 'dart:convert';
import 'dart:io';

import 'chapter_7_student.dart';
import 'chapter_7_group.dart';

void main(List<String> args) async {
  // сохранение данных в JSON
  // создание объекта класса Student
  var student =
      StudentUnloading(name: 'Antti', age: 17, course: 1, single: false);
  List<String> descriptions = [
    'Hockey player',
    'Bibliophile',
    'Synthwave music'
  ];
  student.addAlldescription(descriptions);
  student.addDescription('Hardworking');
  print(student);

  // создание нового файла
  var fileStudent = File('student.json');

  // переменная кодировки в JSON с отступом
  var encoder = JsonEncoder.withIndent(' ');

  // запись в файл и вывод
  fileStudent.writeAsStringSync(encoder.convert(student));
  print(fileStudent.readAsStringSync());

  // загрузка данных из JSON
  var fromFileStudent = File('student.json');
  var studentFromJson =
      StudentLoading.fromJson(jsonDecode(fromFileStudent.readAsStringSync()));
  print(studentFromJson);

  // сериализация и десериализация
  var studentsGroup =
      GroupSerializable.emptyGroup(groupName: 'First_Group', course: 1);

  // первый студент
  var firstStudent = StudentSerializable.withOutDescription(
      name: 'Marco', age: 19, course: 1, single: false);
  var descriptionFirst = ['Bold', 'Football player', 'Student'];
  firstStudent.addAllDescriptions(descriptionFirst);
  firstStudent.addDescription('Dreamer');
  print(firstStudent);

  // второй студент
  var secondStudent = StudentSerializable.withOutDescription(
      name: 'Jano', age: 18, course: 1, single: false);
  var descriptionSecond = ['Romantic', 'Bibliophile', 'Student'];
  secondStudent.addAllDescriptions(descriptionSecond);
  secondStudent.addDescription('Modest');
  print(secondStudent);

  // запись студентов в группу
  studentsGroup
      .addAllStudents(<StudentSerializable>[firstStudent, secondStudent]);

  // переменная кодировки в JSON с отступом
  var encoderStudent = JsonEncoder.withIndent(' ');
  var test = encoderStudent.convert(studentsGroup);

  // запись в файл
  var studentsFile = File('group.json');
  studentsFile.createSync(recursive: true);
  studentsFile.writeAsStringSync(test);

  // загрузка данных из JSON
  var groupStudents = GroupSerializable.fromJson(jsonDecode(test));
  print(groupStudents);
}

// класс для сохранение данных в JSON
class StudentUnloading {
  final String name;
  int age;
  int course;
  bool single;
  List<String> _descriptionList = [];

  StudentUnloading(
      {required this.name,
      required this.age,
      required this.course,
      required this.single});

  addDescription(String description) {
    _descriptionList.add(description);
  }

  addAlldescription(List<String> descriptions) {
    _descriptionList.addAll(descriptions);
  }

  @override
  String toString() {
    var student = 'Student {name: $name, age: $age, ';
    student += 'course: $course, single: $single, ';
    student += 'description: $_descriptionList}';
    return student;
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'age': age,
      'course': course,
      'single': single,
      'description': _descriptionList
    };
  }
}

// класс для загрузка данных из JSON
class StudentLoading {
  final String name;
  late int age;
  late int course;
  late bool single;
  List<String> _descriptionList = [];

  StudentLoading(
      {required this.name,
      required this.age,
      required this.course,
      required this.single});

  StudentLoading.fromJson(Map<String, dynamic> json) : name = json['name'] {
    age = json['age'];
    course = json['course'];
    single = json['single'];
    _descriptionList = List<String>.from(json['description']);
  }

  addDescription(String description) {
    _descriptionList.add(description);
  }

  addAlldescription(List<String> descriptions) {
    _descriptionList.addAll(descriptions);
  }

  @override
  String toString() {
    var student = 'Student {name: $name, age: $age, ';
    student += 'course: $course, single: $single, ';
    student += 'description: $_descriptionList}';
    return student;
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'age': age,
      'course': course,
      'single': single,
      'description': _descriptionList
    };
  }
}
