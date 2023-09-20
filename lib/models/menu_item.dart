class MenuItem {
  List<String> tags;
  String imageUrl;
  String category;
  String name;
  int price;

  MenuItem({
    required this.tags,
    required this.imageUrl,
    required this.category,
    required this.name,
    required this.price,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      tags: List<String>.from(json['tags']),
      imageUrl: json['imageUrl'],
      category: json['category'],
      name: json['name'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tags': tags,
      'imageUrl': imageUrl,
      'category': category,
      'name': name,
      'price': price,
    };
  }
}
