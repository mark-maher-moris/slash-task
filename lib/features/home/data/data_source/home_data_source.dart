import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:slash_task/features/home/data/models/home_model.dart';
import 'package:slash_task/features/home/domain/entities/home_entity.dart';
import 'package:slash_task/resources/asset_manager.dart';

class HomeDataSource {
  Future<HomeEntity> getHomeData() async {
    final response = await rootBundle.loadString(AssetManager.jsonData);
    final data = await jsonDecode(response);
    return HomeModel.fromJson(data);
  }
}
