import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/model/datas_widget.dart';
import 'package:flutter_application_wheelmanager/model/appbar_widget.dart';
import 'package:flutter_application_wheelmanager/model/button_widget.dart';
import 'package:flutter_application_wheelmanager/model/profile_widget.dart';
import 'package:flutter_application_wheelmanager/model/user.dart';
import 'package:flutter_application_wheelmanager/model/user_preferences.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}
  
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height:25),
          buildName(user),
          const SizedBox(height:25),
          Center(child:buildUpgradeButton()),
          const SizedBox(height:25),
          DatasWidget(),
          const SizedBox(height:25),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize:24)
      ),
      const SizedBox(height:4),
      Text(
        user.email,
        style: TextStyle(color: Colors.grey[600]),
      )
    ],
  );

  Widget buildUpgradeButton() => ButtonWidget(
    text:'Subscribe',
    onClicked: () {},
  );

    Widget buildAbout(User user) => Container(
    padding: EdgeInsets.symmetric(horizontal:50),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
        ),
        const SizedBox(height:15),
        Text(
          user.about,
          style:TextStyle(fontSize: 15, height: 1.5),
        )
      ],
    )
  );
}