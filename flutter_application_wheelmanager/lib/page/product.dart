import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/screen/add_product.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key key}) : super(key: key);

  static final nombrePagina = "ProductPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AddProduct());
  }
}
