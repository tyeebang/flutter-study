import 'package:flutter/material.dart';

class Moraine extends StatelessWidget {
  const Moraine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Moraine',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: <Widget>[
            Image.asset('assets/moraine.jpg',),
            Text('The waters of....')
          ],
        ));
  }
}
