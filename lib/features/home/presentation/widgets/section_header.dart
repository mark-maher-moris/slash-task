import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:slash_task/resources/text_styles.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/string_manager.dart';

class SectionHeader extends StatelessWidget {
  SectionHeader({super.key, required this.name});
  String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStylesManager.headline1(context),
          ),
          Row(
            children: [
              Text(
                StringManager.seeAll,
                style: TextStylesManager.bodyText2(context),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                child: Icon(IconBroken.Arrow___Right_2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: ColorManager.lightGrey),
              )
            ],
          )
        ],
      ),
    );
  }
}
