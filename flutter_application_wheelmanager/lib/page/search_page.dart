import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/colors/color_filter.dart';
import 'package:flutter_application_wheelmanager/screen/search_product.dart';
import 'package:flutter_application_wheelmanager/screen/search_bussines.dart';
import 'package:flutter_application_wheelmanager/screen/search_service.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(20.0),
      children: <Widget>[
        _cardProduct(context),
        SizedBox(
          height: 30.0,
        ),
        _cardService(context),
        SizedBox(
          height: 30.0,
        ),
        _cardBussines(context),
        SizedBox(
          height: 30.0,
        )
      ],
    ));
  }

  Widget _cardProduct(context) => Card(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage('assets/bicicle.png'),
              child: InkWell(onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchProduct()));
              }),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Buscar Productos',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24),
            )
          ],
        ),
      );

  Widget _cardService(context) => Card(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage('assets/service.jpg'),
              colorFilter: ColorFilters.greyscale,
              child: InkWell(onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchService()));
              }),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Buscar Servicios',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24),
            )
          ],
        ),
      );

  Widget _cardBussines(context) => Card(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage('assets/empresa.jpg'),
              colorFilter: ColorFilters.greyscale,
              child: InkWell(onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchBusiness()));
              }),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Buscar Empresas',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24),
            )
          ],
        ),
      );
}
