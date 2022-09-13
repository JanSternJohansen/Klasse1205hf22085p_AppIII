



import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  String message = '';

  Second(this.message, {Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Second Screen')),
      body: Column(
        children: <Widget>[
        Text('Something i Second Screen'),
          Text(widget.message),  // Magic
          TextButton.icon(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.edit_location),
            label: Text('Go Back'),
          ),
        ]
      )

    );
  }
}
