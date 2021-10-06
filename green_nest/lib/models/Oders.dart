import 'dart:convert';

import 'package:flutter/material.dart';

class Oders {
  final int oderId;
  final String type;
  final double totalPrice;
  final String address;
  final String name;
  final int phone;
  Oders({
    @required this.oderId,
    @required this.type,
    @required this.totalPrice,
    @required this.address,
    @required this.name,
    @required this.phone,
  });

  factory Oders.fromMap(Map<String, dynamic> map) {
    return Oders(
      oderId: map['order_id'],
      type: map['order_type'],
      totalPrice: map['total_price'],
      address: map['address'] + " " + map['city'],
      name: map['first_name'] + " " + map['last_name'],
      phone: map['mobile'],
    );
  }
}
