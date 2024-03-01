
import 'dart:convert';

ItemUpdate itemUpdateFromJson(String str) => ItemUpdate.fromJson(json.decode(str));

String itemUpdateToJson(ItemUpdate data) => json.encode(data.toJson());

class ItemUpdate {
  int id;
  String title;
  int price;
  int stock;
  double rating;
  List<String> images;
  String thumbnail;
  String description;
  String brand;
  String category;

  ItemUpdate({
    required this.id,
    required this.title,
    required this.price,
    required this.stock,
    required this.rating,
    required this.images,
    required this.thumbnail,
    required this.description,
    required this.brand,
    required this.category,
  });

  factory ItemUpdate.fromJson(Map<String, dynamic> json) => ItemUpdate(
    id: json["id"],
    title: json["title"],
    price: json["price"],
    stock: json["stock"],
    rating: json["rating"]?.toDouble(),
    images: List<String>.from(json["images"].map((x) => x)),
    thumbnail: json["thumbnail"],
    description: json["description"],
    brand: json["brand"],
    category: json["category"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "stock": stock,
    "rating": rating,
    "images": List<dynamic>.from(images.map((x) => x)),
    "thumbnail": thumbnail,
    "description": description,
    "brand": brand,
    "category": category,
  };
}
