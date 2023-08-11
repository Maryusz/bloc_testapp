import 'package:equatable/equatable.dart';

// Qui si definiscono tutti i possibili stati in cui un widget può trovarsi
// durante il suo ciclo di vita

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitialState extends HomeState {
  const HomeInitialState();

  @override
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeState {
  const HomeLoadingState();

  @override
  List<Object?> get props => [];
}

class WithPropsPressedState extends HomeState {
  final int value;

  const WithPropsPressedState(this.value);

  @override
  List<Object?> get props => [value];
}

class WithoutPropsPressedState extends HomeState {
  final int value;

  const WithoutPropsPressedState(this.value);

  @override
  List<Object?> get props => [];
}

class UpdatePropsPressedState extends HomeState {
  final int value;

  const UpdatePropsPressedState(this.value);

  @override
  List<Object?> get props => [value];
}

class UpdateWithoutPropsState extends HomeState {
  final int value;

  const UpdateWithoutPropsState(this.value);

  @override
  List<Object?> get props => [];
}
