import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:slash_task/resources/string_manager.dart';
import '../../../../resources/color_manager.dart';

PreferredSizeWidget searchBar() {
  return PreferredSize(
      preferredSize: Size(double.infinity, 50),
      child: Center(
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 300),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        IconBroken.Search,
                        color: ColorManager.greyColor,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: ColorManager.lightGrey,
                      filled: true,
                      labelStyle: TextStyle(color: ColorManager.greyColor),
                      label: Text(StringManager.searchHere)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(5),
                height: 50,
                child: Icon(
                  IconBroken.Filter,
                  size: 18,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorManager.lightGrey),
              ),
            ],
          ),
        ),
      ));
}
