import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_wheelmanager/models/product.dart';

class ProductApi {
  static Future<List<Product>> getProducts() async {
    Uri url = 'https://wheel-manager-movs.herokuapp.com/api/products/1' as Uri;
    final response = await http.get(url);
    final body = json.decode(response.body);

    return body.map<Product>(Product.fromJson).toList();
  }
}
