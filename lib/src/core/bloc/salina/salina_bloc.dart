import 'package:better_salina_app/src/core/bloc/salina/salina_state.dart';
import 'package:better_salina_app/src/core/model/line_number.dart';
import 'package:better_salina_app/src/core/provider/lines_provider.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'salina_event.dart';

class SalinaBloc extends Bloc<SalinaEvent, SalinaState> {
  SalinaBloc() : super(const SalinaState.initial()) {
    on<LoadLines>(_onLoadLines);
    on<ChangeLinesToShow>(_onChangeLinesToShow);
  }
  LinesProvidel guessProvider = LinesProvidel();
  Future<void> _onLoadLines(LoadLines event, Emitter<SalinaState> emit) async {
    List<LineNumber> lines = await guessProvider.loadLines(event.stopId);

    if (lines.isNotEmpty) {
      emit(SalinaState.loadedTables(lines, lines[0].departures));
    } else {
      emit(const SalinaState.error());
    }
  }

  Future<void> _onChangeLinesToShow(
      ChangeLinesToShow event, Emitter<SalinaState> emit) async {
    final selectedLine =
        event.lines.firstWhere((element) => element.id == event.lineId);
    emit(SalinaState.loadedTables(event.lines, selectedLine.departures));
  }
}
