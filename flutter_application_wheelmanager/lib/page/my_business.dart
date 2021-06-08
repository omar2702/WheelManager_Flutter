import 'package:flutter/material.dart';

class MyBusiness extends StatelessWidget {
  const MyBusiness({Key key}) : super(key: key);

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
              title: Text('Mi Empresa'), backgroundColor: Colors.transparent),
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [],
          ),
        ),
      ),
    );
  }
}
