
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubic/Cubit/counter_cubit_state.dart';

class CounterCubit extends Cubit<CubitCounterState>{

  int counter=0;
  CounterCubit(): super(CounterInitiate());

  void counterIncrease(){
    counter++;
    emit(CounterUpdateChanged(counter));
}
  void counterDecrease(){
    counter--;
    emit(CounterUpdateChanged(counter));
}
}