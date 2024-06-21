import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/home/data/data_source/home_data_source.dart';
import 'package:slash_task/features/home/domain/entities/home_entity.dart';
import 'package:slash_task/features/home/domain/entities/sub_entity/product_entity.dart';
import 'package:slash_task/features/home/presentation/viewmodel/cubit/home_state.dart';

import '../../../data/data_source/category_data_source.dart';
import '../../../domain/entities/category_entity.dart';

class HomeCubit extends Cubit<HomeState> {
  CategoryDataSource _categoryDataSource = CategoryDataSource();
  HomeDataSource _homeDataSource = HomeDataSource();

  late List<CategoryEntity> _categories;
  late HomeEntity _homeData;

  HomeCubit(this._categoryDataSource) : super(HomeInitial());

  List<CategoryEntity> get categories => _categories;
  HomeEntity get homeData => _homeData;

  void fetchCategories()async {
    try {
      emit(HomeLoading());
      final categories = _categoryDataSource.getCategories();
      final homeData = await  _homeDataSource.getHomeData();

      emit(HomeLoaded(categories, homeData));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }
}
