import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/models/corporation.dart';

class CorporationPage extends StatefulWidget {
  final Corporation corporation;
  const CorporationPage({
    Key key,
    @required this.corporation,
  }) : super(key: key);

  @override
  _CorporationPageState createState() => _CorporationPageState();
}

class _CorporationPageState extends State<CorporationPage> {
  @override
  Widget build(BuildContext context) => Container(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(widget.corporation.name),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Text(
                  widget.corporation.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 64),
                // ignore: deprecated_member_use
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  color: Colors.teal,
                  child: Text(
                    'Corporation Details',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      );
}
