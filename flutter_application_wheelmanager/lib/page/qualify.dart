import 'package:flutter/material.dart';

class QualifyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondo.jpg'), fit: BoxFit.cover)),
        child: Center(child: Text('Qualify')));
  }
}
