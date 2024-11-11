import 'package:flutter_bloc/flutter_bloc.dart';

class CounterIncremented {} //event handeler

class CounterBloc extends Bloc<CounterIncremented, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    }); // based on the event handeling we performing this function
  }
}
