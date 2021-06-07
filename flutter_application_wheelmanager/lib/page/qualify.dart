import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/colors/color_filter.dart';
import 'package:flutter_application_wheelmanager/qualify/qualify_business.dart';
import 'package:flutter_application_wheelmanager/qualify/qualify_product.dart';
import 'package:flutter_application_wheelmanager/qualify/qualify_service.dart';

class QualifyPage extends StatelessWidget {
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
              image: AssetImage('assets/calificar_producto.jpg'),
              colorFilter: ColorFilters.greyscale,
              child: InkWell(onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QualifyProduct()));
              }),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Calificar Productos',
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
              image: AssetImage('assets/calificar_servicio.jpg'),
              colorFilter: ColorFilters.greyscale,
              child: InkWell(onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QualifyService()));
              }),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Calificar Servicios',
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
              image: AssetImage('assets/calificar_empresa.jpg'),
              colorFilter: ColorFilters.greyscale,
              child: InkWell(onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QualifyBusiness()));
              }),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Calificar Empresas',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                  fontSize: 30),
            )
          ],
        ),
      );
}
