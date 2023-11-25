import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

int counter = 0;

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<Increamnet>((event, emit) {
      counter++;
      emit(Added(currentCounter: counter));
    });

    on<Decreament>((event, emit) {
      if (counter <= 0) {
        emit(NegativeNumber());
      } else {
        counter--;
        emit(Subed(subedCounter: counter));
      }
    });

    on<AddedValue>((event, emit) {
      counter = counter + event.value;
      if (counter >= 0) {
        emit(SuccessToAdd(newValue: counter));

        print(counter);
      } else {
        emit(NegativeNumber());
      }
    });
  }
}
