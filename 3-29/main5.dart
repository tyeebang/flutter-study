import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Store',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: <Widget> [
          Row(
            children: <Widget> [
              Expanded(
                flex: 1,
                child: Text('Womens', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              ),
              Expanded(
                flex: 1,
                child: Text('Kids', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              ),
              Expanded(
                flex: 1,
                child: Text('Shose', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              ),
              Expanded(
                flex: 1,
                child: Text('Bags', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              ),
            ],
          ),

          Container(
            child: Image.asset('assets/bag.jpeg'),
          ),

          SizedBox(height: 10,),

          Container(
            child: Image.asset('assets/cloth.jpeg'),
          ),
        ],
      ),
    );
  }
}
