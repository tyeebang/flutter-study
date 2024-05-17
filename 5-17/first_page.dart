import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ), body: Center(
      child: ElevatedButton(
        onPressed: () async{
          final result = await Navigator.pushNamed((context), '/second');
          print(result);
        },
        child: Text('다음페이지로', style: TextStyle(color: Colors.white), ),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)),
      ),
    ),
    );
  }
}