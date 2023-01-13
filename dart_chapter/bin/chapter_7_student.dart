import 'package:json_annotation/json_annotation.dart';
part 'chapter_7_student.g.dart';

// сериализация и десериализация
@JsonSerializable()
class StudentSerializable {
  final String name;
  late int age;
  late int course;
  late bool single;
  @JsonKey(name: 'description')
  List<String>? _descriptionList = [];

  StudentSerializable(this.name, this.age, this.course, this.single,
      List<String>? description) {
    _descriptionList = description;
  }

  StudentSerializable.withOutDescription(
      {required this.name,
      required this.age,
      required this.course,
      required this.single});

  factory StudentSerializable.fromJson(Map<String, dynamic> json) =>
      _$StudentSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$StudentSerializableToJson(this);

  List<String> get description {
    return _descriptionList ?? <String>[];
  }

  addDescription(String description) {
    _descriptionList?.add(description);
  }

  addAllDescriptions(List<String> descriptions) {
    _descriptionList?.addAll(descriptions);
  }

  @override
  String toString() {
    var student = 'Student {name: $name, age: $age, ';
    student += 'course: $course, single: $single, ';
    student += 'description: $_descriptionList}';
    return student;
  }
}
