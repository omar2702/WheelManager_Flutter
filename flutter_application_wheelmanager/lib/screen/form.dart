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
  Map<String, dynamic> product;
  final idForm = GlobalKey<FormState>();
  Map<String, dynamic> newProduct = {};

  @override
  Widget build(BuildContext context) {
    product = ModalRoute.of(context).settings.arguments;
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
                _crearInputPrecio(),
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
      initialValue: (product != null) ? product['nombre'] : "",
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
        initialValue: (product != null) ? product['descripcion'] : "",
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

  _crearInputPrecio() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        initialValue: (product != null) ? product['precio'] : "",
        onSaved: (valor) {
          setState(() {
            newProduct['precio'] = valor;
          });
        },
        maxLines: null,
        decoration: InputDecoration(hintText: "Precio del Producto"),
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
          if (product != null) {
            ProductProvider().editProduct(newProduct, product);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeBusinessPage()));
          } else {
            ProductProvider().addProduct(newProduct);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeBusinessPage()));
          }
          //Navigator.popAndPushNamed(context, AddProduct.nombrePagina);
        },
        child: (product != null)
            ? Text("Editar Producto")
            : Text("Agregar Producto"),
      ),
    );
  }
}
