
class Product {
  final String  name;
  final String images;
  final String totalTime;
  Product({
    required this.name,
    required this.images,
    required this.totalTime,
  });
  factory Product.fromJson(dynamic json) {
    return Product(
        name: json['name'] as String,
        images: json['images'][0]['hostedLargeUrl'] as String,
        totalTime: json['totalTime'] as String);
  }
  static List<Product> productFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Product.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return 'Product {name: $name, image: $images, totalTime: $totalTime}';
  }
}
