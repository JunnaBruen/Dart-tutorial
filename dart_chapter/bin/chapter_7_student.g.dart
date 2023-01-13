// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_7_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentSerializable _$StudentSerializableFromJson(Map<String, dynamic> json) {
  return StudentSerializable(
    json['name'] as String,
    json['age'] as int,
    json['course'] as int,
    json['single'] as bool,
    (json['description'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$StudentSerializableToJson(
        StudentSerializable instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'course': instance.course,
      'single': instance.single,
      'description': instance.description,
    };
