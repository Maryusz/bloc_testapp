import 'dart:math';

import 'package:bloc_testapp/food.dart';
import 'package:bloc_testapp/food_generator.dart';
import 'package:bloc_testapp/home_event.dart';
import 'package:bloc_testapp/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitialState()) {
    on<FetchDataEvent>(_onFetchDataEvent);
  }

  void _onFetchDataEvent(
    FetchDataEvent event,
    Emitter<HomeState> emitter,
  ) async {
    // Emette uno stato di caricamento
    emitter(const HomeLoadingState());

    await Future.delayed(const Duration(seconds: 2));

    bool isSuccess = Random().nextBool();

    if (isSuccess) {
      List<Food> dummyFoods = FoodGenerator.generateDummyFoods();
      emitter(HomeSuccessFetchDataState(foods: dummyFoods));
    } else {
      emitter(const HomeErrorFetchDataState(
        errorMessage: "Errore durante il caricamento dei dati",
      ));
    }
  }
}
