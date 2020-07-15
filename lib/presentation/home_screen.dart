import 'package:flutter/material.dart';

List<String> names = [
  'Jim',
  'Dwight',
  'Pam',
  'Ryan',
  'Michael',
];

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 30,
            color: Colors.amber,
            child: Text('Hello World!'),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.pink,
                  ),
                  width: 50,
                  alignment: Alignment.center,
                  child: Text('$index'),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: names.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.red,
                  ),
                  alignment: Alignment.center,
                  child: Text(names[index]),
                  height: 50,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
