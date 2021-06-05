import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/page/product.dart';

class HomeBusinessPage extends StatefulWidget {
  static final nombrePagina = "HomeBusiness";
  @override
  _HomeBusinessPageState createState() => _HomeBusinessPageState();
}

class _HomeBusinessPageState extends State<HomeBusinessPage> {
  int page = 0;
  _getWidget(int pos) {
    switch (pos) {
      case 2:
        return ProductPage();
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
      appBar: AppBar(
        title: Text('WheelManager'),
      ),
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
              leading: Icon(Icons.search),
              title: Text('Mi Publicidad'),
              onTap: () {
                Navigator.of(context).pop();
                _selectDrawer(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Mis Promociones'),
              onTap: () {
                Navigator.of(context).pop();
                _selectDrawer(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Mis Productos'),
              onTap: () {
                Navigator.of(context).pop();
                _selectDrawer(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
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
