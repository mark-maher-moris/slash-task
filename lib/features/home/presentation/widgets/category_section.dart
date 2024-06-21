import 'package:flutter/material.dart';
import '../../../../resources/color_manager.dart';
import '../../../../resources/string_manager.dart';
import '../../domain/entities/category_entity.dart';
import 'section_header.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key, required this.categories});
  List<CategoryEntity> categories = [];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(children: [
      SectionHeader(
        name: StringManager.categories,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories
              .map((category) => Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 50,
                            backgroundColor: ColorManager.blackColor,
                            child: Icon(
                              category.icon,
                              color: Colors.white,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(category.title)
                      ],
                    ),
                  ))
              .toList(),
        ),
      )
    ]);
  }
}
