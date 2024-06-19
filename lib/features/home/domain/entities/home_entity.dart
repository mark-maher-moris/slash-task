import 'sub_entity/product_entity.dart';

class HomeEntity {
  List<ProductEntity>? bestSelling = [];
  List<ProductEntity>? newArrival = [];
  List<ProductEntity>? recommendedForYou = [];
  HomeEntity({this.bestSelling, this.newArrival, this.recommendedForYou});
}
