import 'package:flutter/material.dart';

class DismissibleList extends StatefulWidget {
  const DismissibleList({super.key});

  @override
  _DismissibleListState createState() => _DismissibleListState();
}

class _DismissibleListState extends State<DismissibleList> {
  final List<String> items = [
    'item 1',
    'item 2 ',
    'item 3 ',
    'item 4',
    'item 5'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('عناصر قابلة للتجاوز'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Dismissible(
          movementDuration: const Duration(seconds: 3),
          onDismissed: (direction) {
            if (direction == DismissDirection.endToStart) {
              print('object');
            } else {
              print('bla bla');
            }
          },
          background: Container(
            color: Colors.red,
            child: const Icon(Icons.delete),
          ),
          secondaryBackground: Container(
            color: Colors.green,
            child: const Icon(Icons.archive),
          ),
          key: GlobalKey(),
          child: ListTile(
            title: Text(items[index]),
          ),
        ),
      ),
    );
  }
}
