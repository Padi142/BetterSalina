// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineNumber _$LineNumberFromJson(Map<String, dynamic> json) => LineNumber(
      name: json['Name'] as String,
      id: json['PostID'] as int,
      departures: (json['Departures'] as List<dynamic>)
          .map((e) => Salina.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LineNumberToJson(LineNumber instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'PostID': instance.id,
      'Departures': instance.departures,
    };
