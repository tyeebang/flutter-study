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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  num sum = 0;
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  final valueList = ['plus', 'minus', 'times', 'divide'];
  var selectedValue = 'plus';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('plus calc'),
      ),
      body: Column(
        children: <Widget>[
          Text('$sum'),
          TextField(
            decoration: InputDecoration(
                labelText: '1번째 숫자',
                border: OutlineInputBorder()
            ),
            controller: num1,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: '2번째 숫자',
                border: OutlineInputBorder()
            ),
            controller: num2,
          ),

          ElevatedButton(onPressed: (){
              if(selectedValue == 'plus') {
                setState(() {
                  sum = num.parse(num1.text) + num.parse(num2.text);
                });
              } else if(selectedValue == 'minus') {
                setState(() {
                  sum = num.parse(num1.text) - num.parse(num2.text);
                });
              } else if(selectedValue == 'times') {
                setState(() {
                  sum = num.parse(num1.text) * num.parse(num2.text);
                });
              } else {
                setState(() {
                  sum = num.parse(num1.text) / num.parse(num2.text);
                });
              }
            },
            child: Text('$selectedValue')
          ),

          DropdownButton(
              value: selectedValue,
              items: valueList.map(
                    (value){
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
              onChanged: (value){
                setState(() {
                  selectedValue = value as String;
                });
              }
          )
        ],
      ),
    );
  }
}
