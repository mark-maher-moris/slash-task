import 'package:flutter/material.dart';
import '../../domain/entities/category_entity.dart';
import '../widgets/category_section.dart';

class MobileHomeUI extends StatelessWidget {
final List<CategoryEntity> categories;

MobileHomeUI({super.key, required this.categories});

@override
Widget build(BuildContext context) {
 return Scaffold(
   body: CategorySection(categories: categories),
 );
}
}
