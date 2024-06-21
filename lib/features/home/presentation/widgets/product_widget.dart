import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:slash_task/features/home/domain/entities/sub_entity/product_entity.dart';
import 'package:slash_task/resources/asset_manager.dart';
import 'package:slash_task/resources/color_manager.dart';
import 'package:slash_task/resources/string_manager.dart';
import 'package:slash_task/resources/text_styles.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({super.key, required this.productEntity});
  ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(5),
            height: 250,
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.asset(AssetManager.defaultImage),
                      IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor: ColorManager.lightGrey),
                          onPressed: () {},
                          icon: Icon(IconBroken.Heart))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    productEntity.name.toString(),
                    style: TextStylesManager.bodyText1(context),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringManager.egp +
                            ' ' +
                            productEntity.price.toString(),
                        style: TextStylesManager.priceStyle(context),
                      ),
                      IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor: ColorManager.blackColor),
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: ColorManager.whiteColor,
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
