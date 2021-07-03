import 'package:meta/meta.dart';

class Service {
  final int id;
  final int raiting;
  final String name;
  final String description;
  final double price;
  final String picture;

  const Service({
    @required this.id,
    @required this.raiting,
    @required this.price,
    @required this.name,
    @required this.description,
    @required this.picture,
  });

  static Service fromJson(json) => Service(
        id: json['id'],
        raiting: json['raiting'],
        price: json['price'],
        name: json['name'],
        description: json['description'],
        picture: json['picture'],
      );
}
