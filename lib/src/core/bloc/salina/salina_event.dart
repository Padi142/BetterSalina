part of 'salina_bloc.dart';

abstract class SalinaEvent extends Equatable {
  const SalinaEvent();

  @override
  List<Object> get props => [];
}

class LoadLines extends SalinaEvent {
  final String stopId;
  final int direction;
  const LoadLines(this.stopId, this.direction);

  @override
  List<Object> get props => [];
}
