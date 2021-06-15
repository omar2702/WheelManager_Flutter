import 'package:flutter/material.dart';

class PublicityPage extends StatefulWidget {
  @override
  _PublicityPageState createState() => _PublicityPageState();
}

class _PublicityPageState extends State<PublicityPage> {
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
            title: Text('Mis Publicidades'),
          ),
          body: ListView(
            children: [],
          ),
        ),
      ),
    );
  }
}
