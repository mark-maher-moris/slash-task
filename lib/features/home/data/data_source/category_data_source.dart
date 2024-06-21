import 'package:icon_broken/icon_broken.dart';

import '../../domain/entities/category_entity.dart';
import 'package:flutter/material.dart';

class CategoryDataSource {
  List<CategoryEntity> getCategories() {
    return [
      CategoryEntity(icon: IconBroken.Time_Circle, title: 'Fashion'),
      CategoryEntity(icon: IconBroken.Paper_Fail, title: 'Games'),
      CategoryEntity(icon: Icons.category, title: 'Accessories'),
      CategoryEntity(icon: Icons.face_5_outlined, title: 'Books'),
    ];
  }
}
