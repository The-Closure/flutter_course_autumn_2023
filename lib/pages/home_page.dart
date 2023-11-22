import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/provider/counter_provider.dart';
import 'package:provider_test/provider/share_data_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      // appBar: AppBar(
      //   title: Text(context.watch<ShareDataProvider>().sharedData),
      // ),
      body: Center(
        child: Text(
          context.watch<CounterProvider>().counter.toString(),
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().incrementCounter();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
