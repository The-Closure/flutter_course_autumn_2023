import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_example/main.dart';
import 'package:search_example/view/bloc/todo_bloc.dart';
import 'package:search_example/view/test_page/test_page.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TodoBloc, TodoState>(
        listener: (context, state) {
          if (state is SuccessFetchTodo) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text('Dont forget add to your favovrite '),
              backgroundColor: Colors.green,
            ));
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TestPage(),
              ),
            );
          } else if (state is Error) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchPage(),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is SuccessFetchTodo) {
            return ListView.separated(
                itemBuilder: (context, index) => ListTile(
                      title: Text(state.todos[index].title),
                    ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: state.todos.length);
          } else if (state is Error) {
            return const Center(
              child: Text('Error'),
            );
          } else {
            return const Center(
              child: LinearProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
