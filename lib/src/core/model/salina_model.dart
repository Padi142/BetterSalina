import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';

part 'salina_model.g.dart';

@JsonSerializable()
class Salina extends Equatable {
  @JsonKey(name: 'LineName')
  final String lineName;
  @JsonKey(name: 'FinalStop')
  final String finalStop;
  @JsonKey(name: 'TimeMark')
  final String timeMark;

  const Salina({
    required this.lineName,
    required this.finalStop,
    required this.timeMark,
  });

  @override
  List<Object?> get props => [lineName, finalStop, timeMark];

  factory Salina.fromJson(Map<String, dynamic> json) => _$SalinaFromJson(json);

  Map<String, dynamic> toJson() => _$SalinaToJson(this);
}
