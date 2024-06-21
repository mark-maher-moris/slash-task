import 'package:flutter/material.dart';
import 'package:slash_task/features/home/domain/entities/home_entity.dart';
import 'package:slash_task/features/home/domain/entities/sub_entity/product_entity.dart';
import 'package:slash_task/features/home/presentation/widgets/banner_ad.dart';
import 'package:slash_task/features/home/presentation/widgets/category_section.dart';
import 'package:slash_task/features/home/presentation/widgets/products_section.dart';
import 'package:slash_task/resources/color_manager.dart';
import '../../../../resources/string_manager.dart';
import '../../domain/entities/category_entity.dart';

class WebHomeUI extends StatelessWidget {
  final List<CategoryEntity> categories;
  final HomeEntity homeData;

  WebHomeUI({super.key, required this.categories, required this.homeData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerAd(),
              CategorySection(categories: categories),
              Row(
                children: [
                  Expanded(
                    child: ProductsSection(
                        products: homeData.bestSelling,
                        title: StringManager.bestSelling),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 2,
                    color: ColorManager.blackColor,
                  ),
                  Expanded(
                    child: ProductsSection(
                        products: homeData.bestSelling,
                        title: StringManager.newArrival),
                  ),
                ],
              ),
              ProductsSection(
                  products: homeData.bestSelling,
                  title: StringManager.recommendedForYou),
            ],
          ),
        ),
      ),
    );
  }
}
