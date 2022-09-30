import 'package:better_salina_app/src/core/model/salina_model.dart';
import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';

part 'line_number.g.dart';

@JsonSerializable()
class LineNumber extends Equatable {
  @JsonKey(name: 'Name')
  final String name;
  @JsonKey(name: 'PostID')
  final int id;
  @JsonKey(name: "Departures")
  final List<Salina> departures;

  const LineNumber({
    required this.name,
    required this.id,
    required this.departures,
  });

  @override
  List<Object?> get props => [name, id, departures];

  factory LineNumber.fromJson(Map<String, dynamic> json) =>
      _$LineNumberFromJson(json);

  Map<String, dynamic> toJson() => _$LineNumberToJson(this);
}
