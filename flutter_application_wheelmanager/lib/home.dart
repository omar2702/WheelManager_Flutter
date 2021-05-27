import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/page/qualify.dart';
import 'package:flutter_application_wheelmanager/page/search_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  _getWidget(int pos) {
    switch (pos) {
      case 0:
        return SearchPage();
      case 1:
        return QualifyPage();
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
                accountName: Text('User'),
                accountEmail: Text('User@exmaple.com'),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(
                      'U',
                      style: TextStyle(fontSize: 40.0),
                    )),
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                )),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              onTap: () {
                Navigator.of(context).pop();
                _selectDrawer(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Qualify'),
              onTap: () {
                Navigator.of(context).pop();
                _selectDrawer(1);
              },
            ),
          ],
        ),
      ),
      body: _getWidget(page),
    );
  }
}
