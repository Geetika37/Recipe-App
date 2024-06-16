import 'package:flutter/material.dart';
import 'package:recipe_app/constants/textstyle.dart';
import 'package:recipe_app/screens/recipe/widgets/custom_carouselslider.dart';
import 'package:recipe_app/screens/recipe/widgets/custom_divider.dart';
import 'package:recipe_app/utils/color.dart';

class RecipeHomescreen extends StatelessWidget {
  const RecipeHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Image.asset('assets/images/recipe_app_logo.png'),
        ),
        title: Center(
          child: Text(
            'REcipE BooK',
            style: lexend(AppColor.white, 24, FontWeight.w600),
          ),
        ),
      ),
      body: const Column(
        children: [
          CustomDivider(),
          CustomCarousel(),
        ],
      ),
    );
  }
}

