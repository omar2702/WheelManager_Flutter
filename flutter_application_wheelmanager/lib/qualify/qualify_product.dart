import 'package:flutter/material.dart';

class QualifyProduct extends StatelessWidget {
  const QualifyProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo2.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Calificar Producto'),
          actions: <Widget>[],
        ),
      ),
    );
  }
}
