import 'package:flutter/material.dart';

class MyServicePage extends StatefulWidget {
  @override
  _MyServicePageState createState() => _MyServicePageState();
}

class _MyServicePageState extends State<MyServicePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondo.jpg'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text('Mis Servicios'),
          ),
          body: ListView(
            children: [],
          ),
        ),
      ),
    );
  }
}
