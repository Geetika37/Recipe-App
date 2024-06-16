import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/constants/size.dart';
import 'package:recipe_app/utils/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({
    super.key,
  });

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  final myItems = [
    Image.network(
      'https://www.pngall.com/wp-content/uploads/2016/03/Food-PNG.png',
      width: screenWidth * 0.8,
    ),
    Image.network(
      'https://static.vecteezy.com/system/resources/previews/025/064/792/non_2x/fast-food-meal-with-ai-generated-free-png.png',
      width: screenWidth * 0.5,
    ),
    Image.network(
      'https://upload.wikimedia.org/wikipedia/commons/2/20/Broasted_chicken_in_black_background.png',
      width: screenWidth * 0.5,
    ),
    Image.network(
      'https://img.freepik.com/premium-photo/closeup-coalfired-grilled-chicken-with-licks-flames-smoke-black-background_996135-1902.jpg',
      width: screenWidth * 0.5,
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: myItems,
          options: CarouselOptions(
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayInterval: const Duration(seconds: 2),
            height: screenHeight * 0.2,
            onPageChanged: (index, reason) {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
          ),
        ),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: myItems.length,
          effect: const WormEffect(
            dotColor: AppColor.white,
            dotHeight: 5,
            dotWidth: 5,
            activeDotColor: AppColor.appBgColor,
            spacing: 5,
            paintStyle: PaintingStyle.fill,
          ),
        ),
      ],
    );
  }
}
