import 'package:flutter/material.dart';

class IsMobile extends StatelessWidget {
  const IsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const Center(
              child: Text("Portrait"),
            );
          } else {
            return const Center(
              child: Text("Landscape"),
            );
          }
        },
      ),
    );
  }
}
