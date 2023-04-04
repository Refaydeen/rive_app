import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      print('event:$event');
      print('emit:$emit');
      if (event is CounterIncrement) {
        emit(state + 1);
      }
      if (event is CounterDecrement) {
        emit(state - 1);
      }
    });
  }
}
