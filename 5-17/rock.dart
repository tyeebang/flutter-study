import 'package:flutter/material.dart';

class Rock extends StatelessWidget {
  const Rock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Ocean',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: <Widget>[
            Image.asset('assets/ocean.jpg',),
            Text('The waters of....')
          ],
        ));
  }
}
