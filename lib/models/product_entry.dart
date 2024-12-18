// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  String model;
  String pk;
  Fields fields;

  Product({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String name;
  int stock;
  String? category;
  int price;
  String description;
  String image;

  Fields({
    required this.user,
    required this.name,
    required this.stock,
    required this.category,
    required this.price,
    required this.description,
    required this.image,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        stock: json["stock"],
        category: json["category"],
        price: json["price"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "stock": stock,
        "category": category,
        "price": price,
        "description": description,
        "image": image,
      };
}
