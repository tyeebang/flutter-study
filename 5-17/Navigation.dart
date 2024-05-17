import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FirstPage(),
    );
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

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
          final person = Person('홍길동', 20);
          final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage(person: person))
          );
          print(result);
        },
        child: Text('다음페이지로', style: TextStyle(color: Colors.white), ),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)), 
      ),
    ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final Person? person;

  SecondPage({@required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ), body: Center(
      child: ElevatedButton(
        onPressed: (){
          Navigator.pop(context, 'ok');
        },
        child: Text('이전페이지로', style: TextStyle(color: Colors.white), ),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)),
      ),
    ),
    );
  }
}
