import 'dart:convert';

import 'package:flutter_application_wheelmanager/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences _preferences;
  static const _keyUser = "user";
  static const myUser = User(
    imagePath:'https://i.imgur.com/2VcNXz2.jpg',
    name: 'Dylan Wang',
    email: 'dylan.wang@gmail.com',
    about: 'Me considero un ciclista casual. Suelo ir a todos lados en bicicleta porque ahorro dinero y salvo el medio ambiente.',
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async{
    final json=jsonEncode(user.toJson());
    await _preferences.setString(_keyUser, json);
  }

  static User getUser(){
    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}