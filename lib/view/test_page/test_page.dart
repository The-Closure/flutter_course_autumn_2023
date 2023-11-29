import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_example/view/bloc/todo_bloc.dart';

Bloc bloc = TodoBloc();

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state is SuccessFetchTodo) {
            return const Scaffold(body: FlutterLogo());
          } else {
            return const SizedBox.square(
              dimension: 400,
              child: Placeholder(),
            );
          }
        },
      ),
    );
  }
}
