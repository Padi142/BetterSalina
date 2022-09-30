part of 'salina_bloc.dart';

abstract class SalinaEvent extends Equatable {
  const SalinaEvent();

  @override
  List<Object> get props => [];
}

class LoadLines extends SalinaEvent {
  final String stopId;
  const LoadLines(this.stopId);

  @override
  List<Object> get props => [];
}

class ChangeLinesToShow extends SalinaEvent {
  final List<LineNumber> lines;
  final int lineId;
  const ChangeLinesToShow(
    this.lines,
    this.lineId,
  );

  @override
  List<Object> get props => [];
}
