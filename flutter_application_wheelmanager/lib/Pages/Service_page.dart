import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/models/product.dart';
import 'package:flutter_application_wheelmanager/models/service.dart';
import 'package:transparent_image/transparent_image.dart';

class ServicePage extends StatefulWidget {
  final Service service;
  const ServicePage({
    Key key,
    @required this.service,
  }) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) => Container(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(widget.service.name),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 200),
                  child: FadeInImage.memoryNetwork(
                    width: 200,
                    fit: BoxFit.fitWidth,
                    placeholder: kTransparentImage,
                    image: widget.service.picture,
                    imageErrorBuilder: (context, url, error) =>
                        Icon(Icons.error),
                  ),
                ),
                Text(
                  widget.service.name,
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
                    'Buy Service',
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
