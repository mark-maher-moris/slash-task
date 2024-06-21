import 'package:slash_task/features/home/domain/entities/home_entity.dart';
import '../../domain/entities/sub_entity/product_entity.dart';

class HomeModel extends HomeEntity {
  List<ProductEntity>? bestSelling;
  List<ProductEntity>? newArrival;
  List<ProductEntity>? recommendedForYou;

  HomeModel({
    required this.bestSelling,
    required this.newArrival,
    required this.recommendedForYou,
  }) : super(
          bestSelling: bestSelling,
          newArrival: newArrival,
          recommendedForYou: recommendedForYou,
        );

  factory HomeModel.fromJson(Map<String, dynamic> data) {
    return HomeModel(
      bestSelling: (data['bestSelling'] as List<dynamic>?)
              ?.map((product) => ProductEntity.fromJson(product))
              .toList() ??
          [],
      newArrival: (data['newArrival'] as List<dynamic>?)
              ?.map((product) => ProductEntity.fromJson(product))
              .toList() ??
          [],
      recommendedForYou: (data['recommendedForYou'] as List<dynamic>?)
              ?.map((product) => ProductEntity.fromJson(product))
              .toList() ??
          [],
    );
  }

  HomeEntity toEntity() {
    return HomeEntity(
      bestSelling: bestSelling,
      newArrival: newArrival,
      recommendedForYou: recommendedForYou,
    );
  }
}
