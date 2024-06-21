import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:slash_task/resources/assets_manager.dart';

class BannerAd extends StatelessWidget {
  const BannerAd({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options:
          CarouselOptions(autoPlay: true, enlargeFactor: 0.4, height: 200.0),
      items: [AssetManager.bannerImage, AssetManager.bannerImage].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    i,
                    fit: BoxFit.cover,
                  )),
            );
          },
        );
      }).toList(),
    );
  }
}
