import 'package:meta/meta.dart';

import 'package:meta/meta.dart';

class Corporation {
  final String name;
  final String address;
  final String phone;
  final String ruc;

  const Corporation({
    @required this.name,
    @required this.address,
    @required this.phone,
    @required this.ruc,
  });

  static Corporation fromJson(json) => Corporation(
        name: json['name'],
        address: json['address'],
        phone: json['phone'],
        ruc: json['ruc'],
      );
}
