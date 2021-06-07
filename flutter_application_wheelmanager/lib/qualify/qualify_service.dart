import 'package:flutter/material.dart';

class QualifyService extends StatelessWidget {
  const QualifyService({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo2.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Calificar Servicio'),
          actions: <Widget>[],
        ),
      ),
    );
  }
}
