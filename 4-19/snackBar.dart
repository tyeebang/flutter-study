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
  int num = 2;
  String txt = '증가';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            backgroundColor: Colors.yellowAccent,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: '메뉴',
                ),
                Tab(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.photo),
                      Text('사진'),
                    ],
                  ),
                ),
                Tab(
                  child: Text('카운팅'),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    leading: Image.asset('./assets/noodle.jpg'),
                    title: Text('우동'),
                    subtitle: Text('6000'),
                    trailing: Icon(Icons.add_shopping_cart),
                  ),
                  ListTile(
                    leading: Image.asset('./assets/gim.jpg'),
                    title: Text('김밥'),
                    subtitle: Text('5000'),
                    trailing: Icon(Icons.add_shopping_cart),
                  ),
                  ListTile(
                    leading: Image.asset('./assets/jjol.jpg'),
                    title: Text('쫄면'),
                    subtitle: Text('8000'),
                    trailing: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
              GridView.count(
                crossAxisCount: 3,
                children: <Widget>[
                  Image.asset('./assets/1.jpg'),
                  Image.asset('./assets/2.jpg'),
                  Image.asset('./assets/3.jpg'),
                  Image.asset('./assets/4.jpg'),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('${num}'),
                  ElevatedButton(onPressed: () {
                    if(num == 2) {
                      setState(() {
                        num = 3;
                        txt = '감소';
                      });
                    } else {
                      setState(() {
                        num = 2;
                        txt = '증가';
                      });
                    }
                  }, child: Text('${txt}'))
                ],
              )
            ],
          ),
      ),
    );
  }
}
