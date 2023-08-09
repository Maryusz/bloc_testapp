import 'package:equatable/equatable.dart';

// Nella classe HomeEvent, si definiscono tutti gli eventi che possono essere
// emessi, ad esempio FetchDataEvent richiede il fetching dei dati dal server.
abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class FetchDataEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}
