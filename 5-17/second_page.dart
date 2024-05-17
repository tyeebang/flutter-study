import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ), body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context, 'ok');
        },
        child: Text('이전페이지로', style: TextStyle(color: Colors.white), ),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)),
      ),
    ),
    );
  }
}