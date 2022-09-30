import 'package:better_salina_app/src/core/bloc/stations/stations_state.dart';
import 'package:better_salina_app/src/core/model/station_model.dart';
import 'package:better_salina_app/src/core/provider/stations_provider.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'stations_event.dart';

class StationsBloc extends Bloc<StationsEvent, StationsState> {
  StationsBloc() : super(const StationsState.initial()) {
    on<LoadStations>(_onLoadStations);
    on<AddStation>(_onAddStation);
    on<RemoveStation>(_onRemoveStation);
  }
  StationsProvider stationsProvider = StationsProvider();
  Future<void> _onLoadStations(
      LoadStations event, Emitter<StationsState> emit) async {
    List<StationModel> stations = await stationsProvider.loadStations();

    if (stations.isNotEmpty) {
      emit(StationsState.loadedStations(stations));
    }
  }

  Future<void> _onAddStation(
      AddStation event, Emitter<StationsState> emit) async {
    await stationsProvider.addStation(event.station);
    List<StationModel> stations = await stationsProvider.loadStations();

    if (stations.isNotEmpty) {
      emit(StationsState.loadedStations(stations));
    }
  }

  Future<void> _onRemoveStation(
      RemoveStation event, Emitter<StationsState> emit) async {}
}
