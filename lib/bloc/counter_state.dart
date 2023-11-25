part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class Added extends CounterState {
  int currentCounter;
  Added({
    required this.currentCounter,
  });
}

class Subed extends CounterState {
  int subedCounter;
  Subed({
    required this.subedCounter,
  });
}

class NegativeNumber extends CounterState {}

class SuccessToAdd extends CounterState {
  int newValue;
  SuccessToAdd({
    required this.newValue,
  });
}
