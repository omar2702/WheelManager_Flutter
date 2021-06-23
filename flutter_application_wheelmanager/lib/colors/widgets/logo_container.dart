import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: 140,
        child: Center(
          child: Image.asset('assets/logo_container.svg'),
        ));
  }
}
