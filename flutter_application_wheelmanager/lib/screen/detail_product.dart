import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/providers/product_provider.dart';
import 'package:flutter_application_wheelmanager/screen/form.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({Key key}) : super(key: key);

  static final nombrePagina = "Detalle";

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> producto = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Wheel Manager"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 40.0),
            child: Text(
              "${producto['nombre']}",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Text("Descripción:"),
          Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: Text("${producto['descripcion']}")),
          Text("Precio:"),
          Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: Text("${producto['precio']}")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: deprecated_member_use
              RaisedButton(
                color: Colors.orange,
                textColor: Colors.white,
                onPressed: () => Navigator.pushNamed(
                    context, FormProduct.nombrePagina,
                    arguments: producto),
                child: Text("Editar"),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                color: Colors.orange,
                textColor: Colors.white,
                onPressed: () {
                  ProductProvider().deleteProduct(producto);
                  Navigator.pop(context);
                },
                child: Text("Eliminar"),
              )
            ],
          )
        ],
      ),
    );
  }
}
