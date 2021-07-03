import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/models/product.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductPage extends StatefulWidget {
  final Product product;
  const ProductPage({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) => Container(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.yellow.shade800,
            title: Text(widget.product.name),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  child: FadeInImage.memoryNetwork(
                    width: 150,
                    fit: BoxFit.fitWidth,
                    placeholder: kTransparentImage,
                    image: widget.product.picture,
                    imageErrorBuilder: (context, url, error) =>
                        Icon(Icons.error),
                  ),
                ),
                Text(
                  widget.product.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                Text(
                  widget.product.description,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 64),
                // ignore: deprecated_member_use
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  color: Colors.teal,
                  child: Text(
                    'Buy Product',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      );
}
