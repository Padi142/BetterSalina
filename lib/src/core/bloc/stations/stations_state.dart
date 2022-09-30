import 'package:better_salina_app/src/core/model/station_model.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stations_state.freezed.dart';

@freezed
class StationsState with _$StationsState {
  const factory StationsState.initial() = Initial;
  const factory StationsState.loadedStations(List<StationModel> stations) =
      LoadedStations;
}
