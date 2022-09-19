// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salina_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Salina _$SalinaFromJson(Map<String, dynamic> json) => Salina(
      lineName: json['LineName'] as String,
      finalStop: json['FinalStop'] as String,
      timeMark: json['TimeMark'] as String,
    );

Map<String, dynamic> _$SalinaToJson(Salina instance) => <String, dynamic>{
      'LineName': instance.lineName,
      'FinalStop': instance.finalStop,
      'TimeMark': instance.timeMark,
    };
