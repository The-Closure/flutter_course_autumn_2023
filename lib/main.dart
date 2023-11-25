import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_and_test/bloc/counter_bloc.dart';
import 'package:widgets_and_test/config/observe/bloc_boserve.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

TextEditingController value = TextEditingController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Increamnet());
                      },
                      child: Text('add')),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Decreament());
                      },
                      child: Text('sub'))
                ],
              ),
              TextField(
                controller: value,
              ),
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<CounterBloc>()
                        .add(AddedValue(value: int.parse(value.text)));
                  },
                  child: Text('send')),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  if (state is Added) {
                    return Text(state.currentCounter.toString());
                  } else if (state is Subed) {
                    return Text(state.subedCounter.toString());
                  } else if (state is SuccessToAdd) {
                    return Text(state.newValue.toString());
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              )
            ],
          ),
        );
      }),
    );
  }
}
