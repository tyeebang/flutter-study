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
            leading: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            title: Text(
              'Menu',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.teal,
            actions: [
              Icon(
                Icons.search,
                color: Colors.white,
              )
            ]),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('NEW'),
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('./assets/딸기라떼.jpg'),),
              title: Text('딸기라떼'),
              subtitle: Text('5600'),
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('./assets/리저브콜드브르.jpg'),),
              title: Text('리저브 콜드 부르'),
              subtitle: Text('5600'),
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('./assets/말차티.jpg'),),
              title: Text('말차티'),
              subtitle: Text('5600'),
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('./assets/슈크림라떼.jpg'),),
              title: Text('슈크림라떼'),
              subtitle: Text('5600'),
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('./assets/유스베리티.jpg'),),
              title: Text('유스 베리티'),
              subtitle: Text('5600'),
            ),
          ],
        ));
  }
}
