import 'package:better_salina_app/src/core/bloc/salina/salina_state.dart';
import 'package:better_salina_app/src/core/model/salina_model.dart';
import 'package:better_salina_app/src/core/provider/lines_provider.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'salina_event.dart';

class SalinaBloc extends Bloc<SalinaEvent, SalinaState> {
  SalinaBloc() : super(const SalinaState.initial()) {
    on<LoadLines>(_onLoadLines);
  }
  LinesProvidel guessProvider = LinesProvidel();
  Future<void> _onLoadLines(LoadLines event, Emitter<SalinaState> emit) async {
    List<Salina> salinas = await guessProvider.loadLines(event.stopId);

    if (salinas.isNotEmpty) {
      emit(SalinaState.loadedTables(salinas));
    }
  }
}
