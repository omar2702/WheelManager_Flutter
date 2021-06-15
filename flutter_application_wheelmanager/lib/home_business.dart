import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/home.dart';
import 'package:flutter_application_wheelmanager/page/product.dart';
import 'package:flutter_application_wheelmanager/page/promotion.dart';
import 'package:flutter_application_wheelmanager/page/publicity.dart';
import 'package:flutter_application_wheelmanager/page/service.dart';

import 'model/button_widget.dart';

class HomeBusinessPage extends StatefulWidget {
  static final nombrePagina = "HomeBusiness";
  @override
  _HomeBusinessPageState createState() => _HomeBusinessPageState();
}

class _HomeBusinessPageState extends State<HomeBusinessPage> {
  int page = 0;
  _getWidget(int pos) {
    switch (pos) {
      case 0:
        return PublicityPage();
      case 1:
        return PromotionPage();
      case 2:
        return ProductPage();
      case 3:
        return MyServicePage();
    }
  }

  _selectDrawer(int pos) {
    setState(() {
      page = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WheelManager'), actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ButtonWidget(
              text: 'Usuario',
              onClicked: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ))
      ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Empresario'),
                accountEmail: Text('Empresario@exmaple.com'),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(
                      'E',
                      style: TextStyle(fontSize: 40.0),
                    )),
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                )),
            ListTile(
              leading: Icon(Icons.picture_in_picture_rounded),
              title: Text('Mi Publicidad'),
              onTap: () {
                Navigator.of(context).pop();
                _selectDrawer(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Mis Promociones'),
              onTap: () {
                Navigator.of(context).pop();
                _selectDrawer(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.production_quantity_limits),
              title: Text('Mis Productos'),
              onTap: () {
                Navigator.of(context).pop();
                _selectDrawer(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.home_repair_service_rounded),
              title: Text('Mis Servicios'),
              onTap: () {
                Navigator.of(context).pop();
                _selectDrawer(3);
              },
            )
          ],
        ),
      ),
      body: _getWidget(page),
    );
  }
}
