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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
  double num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: Column(
          children: <Widget>[

            Image.network('https://yy-h.goesn.kr/upload/yy-h/logo/img_88ab73c0-ba06-41fe-bb4a-6b7aa470dfe41637651651016.png'),

            SizedBox(
              height: 30,
            ),
            Text('LOGIN', style: TextStyle(
              fontSize: 30
            ),),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '아이디를 입력하시오.',
                prefixIcon: Icon(Icons.person),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '비밀번호를 입력하시오.',
                prefixIcon: Icon(Icons.lock),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(onPressed: (){}, child: Text('Log In', style: TextStyle(
                ))),
                ElevatedButton(onPressed: (){}, child: Text('Cancel', style: TextStyle(
                ))),
              ],
            )
          ],
        )
    );
  }
}