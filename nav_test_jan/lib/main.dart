import 'package:flutter/material.dart';
import 'package:nav_test_jan/second.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber[200],
        title: Text('My Navigation App',
            style: TextStyle(
              color: Colors.black,
        ),
        )
      ),
      body: Column(
        children: <Widget>[
          Text('Home Screen'),
          TextButton.icon(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (context) => const Second())
              );
            },
            icon: Icon(Icons.edit_location),
            label: Text('Go to Second Page'),
          )
        ]
      )
    );
  }
}




