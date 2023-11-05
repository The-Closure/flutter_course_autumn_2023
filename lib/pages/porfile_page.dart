import 'package:drawer_responseve/pages/desktop_layout.dart';
import 'package:drawer_responseve/pages/mobile_layout.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responseve Design'),
      ),
      body: LayoutBuilder(
        builder: (context, demnsions) {
          if (demnsions.maxWidth < 1024) {
            return const IsMobile();
          } else {
            return const IsDesktop();
          }
        },
      ),

      // ! Sizes with MediaQuery

      // body: Center(
      //   child: Container(
      //     color: Colors.red,
      //     width: screenWidth / 2,
      //     height: screenHeight / 3,
      //     child: Center(
      //       child: Text(
      //         orientation.toString(),
      //         style: const TextStyle(fontSize: 25),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
