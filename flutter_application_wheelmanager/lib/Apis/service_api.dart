import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_wheelmanager/models/service.dart';

class ServiceApi {
  static Future<List<Service>> getServices() async {
    var url = Uri.parse(
        'https://wheel-manager-movs.herokuapp.com/api/corporation_services');
    final response = await http.get(url);
    Map<String, dynamic> body = json.decode(response.body);
    List<dynamic> service = body['content'];

    return service.map<Service>(Service.fromJson).toList();
  }
}
