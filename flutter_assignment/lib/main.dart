import 'package:flutter/material.dart';
import 'ui/login.dart';
import 'ui/regis.dart';
import 'ui/mainSc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        "/":(context) => MyCustomForm(),
        "/2":(context) => SecondScreen(),
        "/3":(context) => MainSc()
      },
      
    );
  }
}


