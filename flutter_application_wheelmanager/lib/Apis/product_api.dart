import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_wheelmanager/models/product.dart';

class ProductApi {
  static Future<List<Product>> getProducts() async {
    var url =
        Uri.parse('https://wheel-manager-movs.herokuapp.com/api/products');
    final response = await http.get(url);
    Map<String, dynamic> body = json.decode(response.body);
    List<dynamic> product = body['content'];

    return product.map<Product>(Product.fromJson).toList();
  }
}
