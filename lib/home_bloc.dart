import 'dart:math';

import 'package:bloc_testapp/home_event.dart';
import 'package:bloc_testapp/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitialState()) {
    on<WithPropsPressed>((event, emit) {
      emit(const HomeLoadingState());
      emit(WithPropsPressedState(event.a));
    });

    on<WithoutPropsPressed>((event, emit) {
      emit(const HomeLoadingState());
      emit(WithoutPropsPressedState(event.b));
    });

    on<UpdatePropsPressed>((event, emit) {
      emit(UpdatePropsPressedState(event.c));
    });

    on<UpdateWithoutProps>((event, emit) {
      emit(UpdateWithoutPropsState(event.d));
    });
  }
}
