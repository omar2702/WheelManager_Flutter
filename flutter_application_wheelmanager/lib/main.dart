import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/home.dart';
import 'package:flutter_application_wheelmanager/model/user_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wheel Manager',
      theme: ThemeData(
        primaryColor: Colors.orange,
        // ignore: deprecated_member_use
        accentColor: Colors.orangeAccent[200],
      ),
      home: HomePage(),
    );
  }
}
