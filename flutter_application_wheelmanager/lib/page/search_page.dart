import 'package:flutter/material.dart';
//import 'package:flutter_application_wheelmanager/colors/color_filter.dart';
import 'package:flutter_application_wheelmanager/search/search_product.dart';
import 'package:flutter_application_wheelmanager/search/search_bussines.dart';
import 'package:flutter_application_wheelmanager/search/search_service.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondo.jpg'), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                SizedBox(
                  height: 45.0,
                ),
                _cardProduct(context),
                SizedBox(
                  height: 45.0,
                ),
                _cardService(context),
                SizedBox(
                  height: 45.0,
                ),
                _cardBussines(context),
              ],
            )),
      ),
    );
  }

  Widget _cardProduct(context) => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage('assets/bicicle.png'),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
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
                  color: Colors.orange,
                  fontSize: 30),
            )
          ],
        ),
      );

  Widget _cardService(context) => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage('assets/service.jpg'),
              //colorFilter: ColorFilters.greyscale,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
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
                  color: Colors.orange,
                  fontSize: 30),
            )
          ],
        ),
      );

  Widget _cardBussines(context) => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage('assets/empresa.jpg'),
              //colorFilter: ColorFilters.greyscale,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
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
                  color: Colors.orange,
                  fontSize: 30),
            )
          ],
        ),
      );
}
