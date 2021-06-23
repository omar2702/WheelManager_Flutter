import 'package:meta/meta.dart';

class Product {
  final String name;
  final String description;
  final String picture;

  const Product({
    @required this.name,
    @required this.description,
    @required this.picture,
  });

  static Product fromJson(json) => Product(
        name: json['name'],
        description: json['description'],
        picture: json['picture'],
      );
}
