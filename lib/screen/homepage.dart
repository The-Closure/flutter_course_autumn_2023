import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Hello'),
            bottom: TabBar(tabs: [
              Tab(
                text: 'Dogs',
              ),
              Tab(
                text: 'Cats',
              ),
              Tab(
                text: 'Horse',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              ResfullPage(),
              Center(
                child: Icon(Icons.home),
              ),
              Center(
                child: Icon(Icons.star_purple500),
              )
            ],
          )),
    );
  }
}

getData() async {
  Dio restfullExample = Dio();
  Response response = await restfullExample
      .get('https://jsonplaceholder.typicode.com/comments');
  print(response.data[1]['email']);
  return response.data;
}

class ResfullPage extends StatelessWidget {
  const ResfullPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            dynamic temp = snapshot.data;
            List data =
                List.generate(temp.length, (index) => temp[index]['name']);

            List data2 =
                List.generate(temp.length, (index) => temp[index]['body']);
            return ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: data.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(data[index]),
                subtitle: Text(data2[index]),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Center(
              child: Text('Somthing Missed'),
            );
          }
        },
      ),
    );
  }
}
