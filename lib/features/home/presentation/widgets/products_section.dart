import 'package:flutter/material.dart';
import '../../domain/entities/sub_entity/product_entity.dart';
import 'product_widget.dart';
import 'section_header.dart';

class ProductsSection extends StatelessWidget {
  ProductsSection({super.key, required this.products, required this.title});
  List<ProductEntity>? products = [];
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            name: title,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: products!
                  .map((product) => ProductWidget(
                        productEntity: product,
                      ))
                  .toList(),
            ),
          )
        ]);
  }
}
