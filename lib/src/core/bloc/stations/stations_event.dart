part of 'stations_bloc.dart';

abstract class StationsEvent extends Equatable {
  const StationsEvent();

  @override
  List<Object> get props => [];
}

class LoadStations extends StationsEvent {
  const LoadStations();

  @override
  List<Object> get props => [];
}

class AddStation extends StationsEvent {
  final StationModel station;
  const AddStation(
    this.station,
  );

  @override
  List<Object> get props => [];
}

class RemoveStation extends StationsEvent {
  final StationModel station;
  const RemoveStation(
    this.station,
  );

  @override
  List<Object> get props => [];
}
