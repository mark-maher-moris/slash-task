import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:slash_task/features/home/data/models/home_model.dart';
import 'package:slash_task/features/home/domain/entities/home_entity.dart';

class HomeDataSource {
  Future<HomeEntity> getHomeData() async {
    final response = await rootBundle.loadString('assets/data/dummyData.json');
    final data = await jsonDecode(response);
    print(HomeModel.fromJson(data).bestSelling);
    return HomeModel.fromJson(data);
  }
}
