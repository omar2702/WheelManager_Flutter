import 'package:meta/meta.dart';

class Product {
  final int id;
  final String name;
  final String description;
  final String picture;
  final double price;
  final int raiting;

  const Product({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.picture,
    @required this.price,
    @required this.raiting,
  });

  static Product fromJson(json) => Product(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        picture: json['picture'],
        price: json['price'],
        raiting: json['raiting'],
      );
}
