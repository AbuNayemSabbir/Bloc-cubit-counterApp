
import 'package:equatable/equatable.dart';

abstract class CubitCounterState extends Equatable{
 const CubitCounterState();
}

class CounterInitiate extends CubitCounterState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class CounterUpdateChanged extends CubitCounterState{
  int counter;
  CounterUpdateChanged( this.counter);
  @override
  // TODO: implement props
  List<Object?> get props => [counter];

}