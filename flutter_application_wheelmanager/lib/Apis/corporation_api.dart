import 'dart:convert';
import 'package:flutter_application_wheelmanager/models/corporation.dart';
import 'package:http/http.dart' as http;

class CorporationApi {
  static Future<List<Corporation>> getCorporations() async {
    var url =
        Uri.parse('https://wheel-manager-movs.herokuapp.com/api/corporations');
    final response = await http.get(url);
    Map<String, dynamic> body = json.decode(response.body);
    List<dynamic> corporation = body['content'];

    return corporation.map<Corporation>(Corporation.fromJson).toList();
  }
}
