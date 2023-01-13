// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_7_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupSerializable _$GroupSerializableFromJson(Map<String, dynamic> json) {
  return GroupSerializable(
    groupName: json['groupName'] as String,
    course: json['course'] as int,
    students: (json['students'] as List<dynamic>?)
        ?.map((e) => StudentSerializable.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GroupSerializableToJson(GroupSerializable instance) =>
    <String, dynamic>{
      'groupName': instance.groupName,
      'course': instance.course,
      'students': instance.students,
    };
