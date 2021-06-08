import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/providers/product_provider.dart';
import 'package:flutter_application_wheelmanager/screen/detail_product.dart';
import 'package:flutter_application_wheelmanager/screen/form.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key key}) : super(key: key);

  static final nombrePagina = "Agregar";
  static final List<Map<String, dynamic>> listas = [];

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (ProductProvider().products.isNotEmpty)
          ? ListView(children: _crearItem())
          : Center(
              child: Text("No hay productos agregados"),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormProduct()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  List<Widget> _crearItem() {
    List<Widget> temporal = [];

    for (Map<String, dynamic> lista in ProductProvider().products) {
      Widget item = ListTile(
        onTap: () {
          return Navigator.pushNamed(context, DetailProduct.nombrePagina,
              arguments: lista);
        },
        title: Text("${lista['nombre']}"),
      );
      temporal.add(item);
    }
    return temporal;
  }
}
