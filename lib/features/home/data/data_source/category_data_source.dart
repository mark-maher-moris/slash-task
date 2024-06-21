import 'package:icon_broken/icon_broken.dart';
import 'package:slash_task/resources/string_manager.dart';

import '../../domain/entities/category_entity.dart';
import 'package:flutter/material.dart';

class CategoryDataSource {
  List<CategoryEntity> getCategories() {
    return [
      CategoryEntity(
          icon: IconBroken.Time_Circle, title: StringManager.fashion),
      CategoryEntity(icon: IconBroken.Paper_Fail, title: StringManager.games),
      CategoryEntity(icon: Icons.category, title: StringManager.accessories),
      CategoryEntity(icon: Icons.face_5_outlined, title: StringManager.books),
      CategoryEntity(
          icon: IconBroken.Time_Circle, title: StringManager.fashion),
      CategoryEntity(icon: IconBroken.Paper_Fail, title: StringManager.games),
      CategoryEntity(icon: Icons.category, title: StringManager.accessories),
      CategoryEntity(icon: Icons.face_5_outlined, title: StringManager.books),
    ];
  }
}
