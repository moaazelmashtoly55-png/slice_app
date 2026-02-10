class ProductModel {
  String id;
  final String name;
  final String details;
  final num price;
  final String imgurl;
  ProductModel({
    required this.name,
    required this.details,
    required this.price,
    required this.imgurl,
    this.id = '',
  });
  factory ProductModel.fromjson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      details: json['details'],
      price: json['price'],
      imgurl: json['imgurl'] ?? '',
    );
  }
  Map<String, dynamic> tojson() {
    return {
      "id": id,
      'name': name,
      'details': details,
      'price': price,
      "imgurl": imgurl,
    };
  }
}
