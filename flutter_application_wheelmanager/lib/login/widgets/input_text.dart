import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText, borderEnabled;
  const InputText(
      {Key key,
      this.label = '',
      this.keyboardType = TextInputType.text,
      this.borderEnabled = true,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: TextFormField(
        textCapitalization: TextCapitalization.sentences,
        keyboardType: this.keyboardType,
        obscureText: this.obscureText,
        decoration: InputDecoration(
            labelText: this.label,
            border: this.borderEnabled ? null : InputBorder.none,
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            )),
      ),
    );
  }
}
