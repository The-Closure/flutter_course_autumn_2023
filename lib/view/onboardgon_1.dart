import 'package:coffee/main.dart';
import 'package:flutter/material.dart';

class FristPage extends StatelessWidget {
  const FristPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  if (value) {
                    controller.jumpToPage(3);
                  } else {}
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 285),
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Color.fromRGBO(139, 161, 168, 1)),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    bottom: 70,
                    top: 70,
                  ),
                  child: Image.asset('assets/cuate.png')),
              Padding(
                padding: const EdgeInsets.only(bottom: 59),
                child: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Exercitation eiusmod cupidatat dolor\n magna dolor consectetur.',
                  style: TextStyle(
                      color: Color.fromRGBO(139, 161, 168, 1), fontSize: 20),
                ),
              ),
              Container(
                  width: 300,
                  height: 300,
                  child: ListView.builder(
                    
                    scrollDirection: Axis.horizontal,
                    itemCount: 100,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(radius: 5,),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    controller.nextPage(
                        duration: Duration(seconds: 3), curve: Curves.bounceOut);
                  },
                  child: Container(
                    child: Center(
                      child: Text('Next', style: TextStyle(color: Colors.white)),
                    ),
                    width: 317,
                    height: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xFF8BA8B5)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
