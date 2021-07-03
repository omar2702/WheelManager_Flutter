import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/Apis/product_api.dart';
import 'package:flutter_application_wheelmanager/Pages/Product_page.dart';
import 'package:flutter_application_wheelmanager/models/product.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart';

class SearchProduct extends StatefulWidget {
  @override
  _SearchProductState createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  List<Product> get products => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo2.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade800,
          title: Text('Buscar Prodcuto'),
        ),
        body: FutureBuilder<List<Product>>(
          future: ProductApi.getProducts(),
          builder: (context, snapshot) {
            final products = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(child: Text('Some error occurred!'));
                } else {
                  return buildsProducts(products);
                }
            }
          },
        ),
      ),
    );
  }

  Widget buildsProducts(List<Product> products) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: [
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ProductPage(product: product),
                  )),
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: FadeInImage.memoryNetwork(
                          width: 80,
                          fit: BoxFit.fill,
                          placeholder: kTransparentImage,
                          image: product.picture,
                          imageErrorBuilder: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ],
                  ),
                  trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  title: Text(product.name),
                  subtitle: Text(product.description),
                ),
              ],
            ),
          );
        },
      );
}
