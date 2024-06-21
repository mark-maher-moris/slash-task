import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:slash_task/features/home/domain/entities/sub_entity/product_entity.dart';
import 'package:slash_task/resources/color_manager.dart';
import 'package:slash_task/resources/string_manager.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({super.key, required this.productEntity});
  ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          height: 200,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset('assets/images/best_seller_1.jpg'),
                  IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: ColorManager.lightGrey),
                      onPressed: () {},
                      icon: Icon(IconBroken.Heart))
                ],
              ),
              Text(productEntity.name.toString()),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(StringManager.egp +
                        ' ' +
                        productEntity.price.toString()),
                    IconButton(
                        style:
                            IconButton.styleFrom(backgroundColor: Colors.grey),
                        onPressed: () {},
                        icon: Icon(IconBroken.Heart))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
