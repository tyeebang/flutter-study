import 'package:flutter/material.dart'; // material 디자인 임포트

void main() {
  runApp(const MyApp()); // 앱 시작 부분
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title : 제목 // theme : 테마 지정 // home : 실제 앱이 표시하는 위젯
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// StatelessWidget -> 한번 그려진 후 다시 그려지지 않음 -> 정적
// StatefullWidget -> 한번 그려진 후 다시 그려 줄 수 있음 -> 동적, 상태가 있는 위젯을 정의한다.
// build() -> 화면을 그려주는 역할.

class MyHomePage extends StatefulWidget { // 앱 화면
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  // 처음 stateful을 시작할 때 호출됨. 위젯을 생성.
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
// 변수를 1증가 시킴

  void _incrementCounter() {
    setState(() { // 익명의 함수를 실행 후 화면을 다시 그리게함. 또한 build()역시 다시 실행하게 해준다.
                  // 동적인 역할이므로 stateless 에선 사용이 불가하다.
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  // 화면에 UI를 그려줌.
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold( // material 디자인 앱을 만드는 위젯. // materialApp -> Scaffold가 기본
      appBar: AppBar( // 제목과 메뉴 표시를 해줌.
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // 버튼이 눌렸을 때 실행되는 함수
        tooltip: 'Increment', // 길게 터치할 때 표시하는 도움말
        child: const Icon(Icons.add), // 프로퍼티에 + 모양 아이콘. 속성을 바꾸면 아이콘 모양이 바뀐다.
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
