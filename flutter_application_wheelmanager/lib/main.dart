import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wheel Manager',
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Colors.orangeAccent[200],
      ),
      home: HomePage(),
    );
  }
}
