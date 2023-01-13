import 'package:json_annotation/json_annotation.dart';
import 'chapter_7_student.dart';
part 'chapter_7_group.g.dart';

// сериализация и десериализация
@JsonSerializable()
class GroupSerializable {
  final String groupName;
  late int course;
  List<StudentSerializable>? students = [];

  GroupSerializable({required this.groupName, required this.course, this.students});

  GroupSerializable.emptyGroup({required this.groupName, required this.course});

  factory GroupSerializable.fromJson(Map<String, dynamic> json) => _$GroupSerializableFromJson(json);
  Map<String, dynamic> toJson() => _$GroupSerializableToJson(this);

  int get amountStudents{
    return students?.length ?? 0;
  }

  addStudent(StudentSerializable student){
    students?.add(student);
  }

  addAllStudents(List<StudentSerializable> students){
    this.students?.addAll(students);
  }

  @override
  String toString() {
    var groupInfo = 'Group: $groupName \ncourse: $course\n';
    groupInfo += 'students amount: $amountStudents \nlist: [ \n';

    students?.forEach((element) {
      groupInfo += '$element \n';
    });
    
    groupInfo += ']';
    return groupInfo;
  }
}