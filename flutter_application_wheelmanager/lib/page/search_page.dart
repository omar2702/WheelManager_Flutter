import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/screen/search_bussines.dart';
import 'package:flutter_application_wheelmanager/screen/search_product.dart';
import 'package:flutter_application_wheelmanager/screen/search_service.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ignore: deprecated_member_use
          RaisedButton(
            shape: StadiumBorder(),
            child: Text('Buscar Empresa'),
            color: Colors.orangeAccent[200],
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchBusiness()));
            },
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            shape: StadiumBorder(),
            child: Text('Buscar Producto'),
            color: Colors.orangeAccent[200],
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchProduct()));
            },
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            shape: StadiumBorder(),
            child: Text('Buscar Servicio'),
            color: Colors.orangeAccent[200],
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchService()));
            },
          )
        ],
      )),
    );
  }
}
