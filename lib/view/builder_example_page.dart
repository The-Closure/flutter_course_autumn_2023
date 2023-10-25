import 'package:flutter/material.dart';

class BuilderExamplePage extends StatelessWidget {
  const BuilderExamplePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 12,backgroundColor: Colors.white,actions: [Text("Skip",style: TextStyle(color: Colors.black),)],),
      body:LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth > 400){
          return Center(child: Container(color: Colors.red,width: 400,height: 300,));
        }
        else {
          return Center(child: FlutterLogo(),);
        }
      },)
        
      
    );
  }
}
