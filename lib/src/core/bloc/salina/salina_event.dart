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
