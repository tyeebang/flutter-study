import 'package:flutter/material.dart';
import 'package:untitled/Moraine.dart';
import 'package:untitled/rock.dart';

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
      home: MainPage(),
      routes: {
        '/moraine' : (context) => Moraine(),
        '/rock' : (context) => Rock(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gesture', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ), body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/moraine');
            },
            child: Image.asset('assets/moraine.jpg', width: 100, height: 100,),
          ),

          Text('Moraine lake'),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/rock');
            },
            child: Image.asset('assets/ocean.jpg', width: 100, height: 100,),
          ),

          Text('촛대바위'),
        ],
      ),
    ),
    );
  }
}
