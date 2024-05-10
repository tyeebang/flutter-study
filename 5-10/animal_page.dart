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

enum Animal { AMPHIBIA, REPTILE, MAMMALIA }

class _MyHomePageState extends State<MyHomePage> {
  Animal _animal = Animal.AMPHIBIA;
  var animalField = TextEditingController();
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('animal'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: '동물 애칭을 입력하세요',
              ),
              controller: animalField,
            ),
            RadioListTile(
              title: Text('양서류'),
              value: Animal.AMPHIBIA,
              groupValue: _animal,
              onChanged: (value) {
                setState(() {
                  _animal = value as Animal;
                });
              },
            ),
            RadioListTile(
              title: Text('파충류'),
              value: Animal.REPTILE,
              groupValue: _animal,
              onChanged: (value) {
                setState(() {
                  _animal = value as Animal;
                });
              },
            ),
            RadioListTile(
              title: Text('포유류'),
              value: Animal.MAMMALIA,
              groupValue: _animal,
              onChanged: (value) {
                setState(() {
                  _animal = value as Animal;
                });
              },
            ),
            Row(
              children: <Widget>[
                Text('날 수 있나요?'),
                Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    })
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  var a = '';
                  a = animalField.text;
                  var b = '';
                  print('$_animal');
                  if(_animal == Animal.AMPHIBIA) {
                    b = '파충류';
                  } else if(_animal == Animal.REPTILE) {
                    b = '양서류';
                  } else {
                    b = '포유류';
                  }
                  var c = '';
                  if(isChecked == true) {
                    c = '날 수 있습니다';
                  } else {
                    c = '날 수 없습니다';
                  }
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('동물 추가하기'),
                          content: Text('이 동물의 이름은 $a입니다 또 동물의 종류는 $b입니다. $c'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('네')),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('아니요')),
                          ],
                        );
                      });
                },
                child: Text(
                  'Click',
                  style: TextStyle(fontSize: 50),
                )),
          ],
        ));
  }
}
