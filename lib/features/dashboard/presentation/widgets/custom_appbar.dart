import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:slash_task/features/dashboard/presentation/widgets/search_bar.dart';
import 'package:slash_task/resources/color_manager.dart';
import 'package:slash_task/resources/string_manager.dart';

PreferredSizeWidget customAppBar() {
  return AppBar(
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Text(
          StringManager.slash,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 20),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(onPressed: () {}, icon: Icon(IconBroken.Notification)),
              Positioned(
                top: 10,
                right: 12,
                child: CircleAvatar(
                  backgroundColor: ColorManager.redColor,
                  radius: 4,
                ),
              )
            ],
          ),
        )
      ],
      title: Row(
        children: [
          Icon(
            IconBroken.Location,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringManager.nasrCity,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                Text(
                  StringManager.cairo,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Icon(
            IconBroken.Arrow___Down_2,
          )
        ],
      ),
      bottom: searchBar());
}
