// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class CatalogModel {
  static List<Item> items = [
    Item(
        1,
        "Sumit Pandey",
        "Android Developer",
        "https://media-exp1.licdn.com/dms/image/C5603AQHw4o8wRSAQsQ/profile-displayphoto-shrink_200_200/0/1638617456666?e=2147483647&v=beta&t=hclciZ9f1nP_PFM2e5V-EZgMQL56HNHc8ube6b91r9g",
        "#000000",
        123),
  ];

}

class Item {
  final int id;
  final String name;
  final String desc;
  final String image;
  final String color;
  final num price;

  Item(
    this.id,
    this.name,
    this.desc,
    this.image,
    this.color,
    this.price,
  );


  Item copyWith({
    int? id,
    String? name,
    String? desc,
    String? image,
    String? color,
    num? price,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      desc ?? this.desc,
      image ?? this.image,
      color ?? this.color,
      price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'image': image,
      'color': color,
      'price': price,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['id'] as int,
      map['name'] as String,
      map['desc'] as String,
      map['image'] as String,
      map['color'] as String,
      map['price'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, image: $image, color: $color, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.image == image &&
      other.color == color &&
      other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      image.hashCode ^
      color.hashCode ^
      price.hashCode;
  }
}
