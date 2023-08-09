import 'package:bloc_testapp/food.dart';
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

// Le proprietà come errorMessage e foods sono definite qua, ma vengono implementate poi
// nella classe HomeBloc
class HomeErrorFetchDataState extends HomeState {
  final String errorMessage;
  const HomeErrorFetchDataState({
    required this.errorMessage,
  });

  @override
  List<Object?> get props => [];
}

class HomeSuccessFetchDataState extends HomeState {
  final List<Food> foods;
  const HomeSuccessFetchDataState({
    required this.foods,
  });

  @override
  List<Object?> get props => [];
}
