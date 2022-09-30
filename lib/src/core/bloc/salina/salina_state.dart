import 'package:better_salina_app/src/core/model/line_number.dart';
import 'package:better_salina_app/src/core/model/salina_model.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'salina_state.freezed.dart';

@freezed
class SalinaState with _$SalinaState {
  const factory SalinaState.initial() = Initial;
  const factory SalinaState.error() = Error;
  const factory SalinaState.loadedTables(
      List<LineNumber> lines, List<Salina> salinyToShow) = LoadedLines;
}
