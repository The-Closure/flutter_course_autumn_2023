import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_example/bloc/search_bloc.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: Builder(builder: (context) {
        return BlocListener<SearchBloc, SearchState>(
          listener: (context, state) {
            if (state is NotFound) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Sorry , There is no Result'),
                behavior: SnackBarBehavior.floating,
              ));
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (val) {
                    context.read<SearchBloc>().add(Search(label: val));
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            body: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state is Loading) {
                  return ListView.builder(
                    itemCount: 10, // Number of ListTiles to display
                    itemBuilder: (context, index) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.grey,
                        child: ListTile(
                          leading: const CircleAvatar(),
                          title: Container(
                            width: double.infinity,
                            height: 16.0,
                            color: Colors.white,
                          ),
                          subtitle: Container(
                            width: double.infinity,
                            height: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  );
                } else if (state is Success) {
                  return ListView.builder(
                      itemCount: state.result.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.result[index].question),
                        );
                      });
                } else if (state is NoConnection) {
                  return const Center(
                    child: Text('There is No Internet'),
                  );
                } else {
                  return const Center(
                    child: Text('Not Found'),
                  );
                }
              },
            ),
          ),
        );
      }),
    );
  }
}
