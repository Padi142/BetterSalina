import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';

part 'station_model.g.dart';

@JsonSerializable()
class StationModel extends Equatable {
  final String name;
  final String id;

  const StationModel({
    required this.name,
    required this.id,
  });

  @override
  List<Object?> get props => [
        name,
        id,
      ];

  factory StationModel.fromJson(Map<String, dynamic> json) =>
      _$StationModelFromJson(json);

  Map<String, dynamic> toJson() => _$StationModelToJson(this);
}
