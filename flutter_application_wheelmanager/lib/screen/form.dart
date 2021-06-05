import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/home_business.dart';
import 'package:flutter_application_wheelmanager/providers/product_provider.dart';

class FormProduct extends StatefulWidget {
  FormProduct({Key key}) : super(key: key);

  static final nombrePagina = "Formulario";

  @override
  _FormProductState createState() => _FormProductState();
}

class _FormProductState extends State<FormProduct> {
  final idForm = GlobalKey<FormState>();
  Map<String, dynamic> newProduct = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wheel Manager"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
            key: idForm,
            child: Column(
              children: <Widget>[
                _crearInputNombre(),
                _crearInputDescripcion(),
                _crearButtonAgregar(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  _crearInputNombre() {
    return TextFormField(
      onSaved: (valor) {
        setState(() {
          newProduct['nombre'] = valor;
        });
      },
      decoration: InputDecoration(hintText: "Nombre del Producto"),
    );
  }

  _crearInputDescripcion() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        onSaved: (valor) {
          setState(() {
            newProduct['descripcion'] = valor;
          });
        },
        maxLines: null,
        decoration: InputDecoration(hintText: "Descripción del Producto"),
      ),
    );
  }

  _crearButtonAgregar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: () {
          idForm.currentState.save();
          newProduct['estado'] = false;
          ProductProvider().agregarProducto(newProduct);
          //Navigator.popAndPushNamed(context, AddProduct.nombrePagina);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeBusinessPage()));
        },
        child: Text("Agregar Producto"),
      ),
    );
  }
}
