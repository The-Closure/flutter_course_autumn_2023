part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class Increamnet extends CounterEvent {}

class Decreament extends CounterEvent {}

class AddedValue extends CounterEvent {
  int value;
  AddedValue({
    required this.value,
  });
}
