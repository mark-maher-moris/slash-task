class ProductEntity {
  final int? id;
  final String? name;
  final double? price;
  final String? image;

  ProductEntity({this.id, this.image, this.name, this.price});

  factory ProductEntity.fromJson(Map<String, dynamic> data) {
    return ProductEntity(
        id: data['id'] ?? 0,
        name: data['name'] ?? '',
        price: data['price'] ?? 0.0,
        image: data['image'] ?? '');
  }
}
