import 'package:flutter/material.dart';

class IsDesktop extends StatelessWidget {
  const IsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                color: Colors.red,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    child: const FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text("Flutter"),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 100,
                color: Colors.green,
                child: const FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  child: Text("Flutter"),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 100,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.grey,
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  child: Container(
                      color: Colors.orange, child: const Text("Flutter")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
