class Catalog {
  static List<Items> items = [];
}

class Items {
  final int id;
  final String name;
  final String image;
  final num price;

  Items({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map["id"] ?? 0,
      name: map['name'] ?? "",
      image: map['image'] ?? "",
      price: map['price'] ?? 0,
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "image": image,
        "price": price,
      };
}
