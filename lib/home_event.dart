import 'package:equatable/equatable.dart';

// Nella classe HomeEvent, si definiscono tutti gli eventi che possono essere
// emessi, ad esempio FetchDataEvent richiede il fetching dei dati dal server.
abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class WithPropsPressed extends HomeEvent {
  final int a;
  const WithPropsPressed(this.a);

  @override
  List<Object?> get props => [a];
}

class WithoutPropsPressed extends HomeEvent {
  final int b;
  const WithoutPropsPressed(this.b);

  @override
  List<Object?> get props => [];
}

class UpdatePropsPressed extends HomeEvent {
  final int c;
  const UpdatePropsPressed(this.c);

  @override
  List<Object?> get props => [c];
}

class UpdateWithoutProps extends HomeEvent {
  final int d;
  const UpdateWithoutProps(this.d);

  @override
  List<Object?> get props => [];
}
