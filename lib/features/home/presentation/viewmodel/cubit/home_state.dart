import 'package:slash_task/features/home/domain/entities/home_entity.dart';
import 'package:slash_task/features/home/domain/entities/sub_entity/product_entity.dart';

import '../../../domain/entities/category_entity.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
final List<CategoryEntity> categories;
final HomeEntity homeData;

HomeLoaded(this.categories,this.homeData);
}

class HomeError extends HomeState {
final String message;

HomeError(this.message);
}