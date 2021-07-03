import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/page/edit_profile_page.dart';
import 'package:flutter_application_wheelmanager/page/profile.dart';
import 'package:flutter_application_wheelmanager/page/qualify.dart';
import 'package:flutter_application_wheelmanager/page/route.dart';
import 'package:flutter_application_wheelmanager/page/search_page.dart';

import 'home_business.dart';
import 'model/button_widget.dart';
import 'model/user.dart';
import 'model/user_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User user = UserPreferences.myUser;
  EditProfilePage editProfilePage;
  int page = 0;
  _getWidget(int pos) {
    switch (pos) {
      case 0:
        return SearchPage();
      case 1:
        return QualifyPage();
      case 2:
        return RoutePage();
      case 3:
        return ProfilePage();
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
          backgroundColor: Colors.yellow.shade800,
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: ButtonWidget(
                  text: 'Empresario',
                  onClicked: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeBusinessPage()));
                  },
                ))
          ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text(user.name),
                accountEmail: Text(user.email),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(user.imagePath),
                ),
                decoration: BoxDecoration(
                  color: Colors.orange.shade300,
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Route'),
              onTap: () {
                Navigator.of(context).pop();
                _selectDrawer(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
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
