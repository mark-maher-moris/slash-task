import 'package:slash_task/features/home/domain/entities/sub_entity/product_entity.dart';

class ProductModel extends ProductEntity {
  int? id;
  String? name;
  double? price;
  String? image;

  ProductModel(
      {required super.id,
      required super.image,
      required super.name,
      required super.price});

  factory ProductModel.fromJson(Map<String, dynamic> data) {
    return ProductModel(
        id: data['id'] ?? 0,
        name: data['name'] ?? '',
        price: data['price'] ?? 0.0,
        image: data['image'] ?? '');
  }

 ProductEntity toEntity() {
    return ProductEntity(
      id:id ,image: image,price: price,name:name 
    );
  }
}
