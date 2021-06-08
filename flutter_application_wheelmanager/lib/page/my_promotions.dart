import 'package:flutter/material.dart';

class MyPromotions extends StatelessWidget {
  const MyPromotions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondo4.jpg'), fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
              title: Text('Mia promociones'),
              backgroundColor: Colors.transparent),
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [],
          ),
        ),
      ),
    );
  }
}
