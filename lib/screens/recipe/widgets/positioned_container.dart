import 'package:flutter/material.dart';
import 'package:recipe_app/constants/size.dart';
import 'package:recipe_app/constants/textstyle.dart';
import 'package:recipe_app/screens/recipe/model/recipe_model.dart';
import 'package:recipe_app/utils/color.dart';

class PostionedContainer extends StatelessWidget {
  const PostionedContainer({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.18,
      width: screenWidth * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black87,
        border: Border.all(
          color: AppColor.appBgColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recipe.name,
              style: lexend(AppColor.appBgColor, 20, FontWeight.w500),
            ),
            Text(
              '${recipe.tags.first} & ${recipe.tags.last}',
              style: lexend(AppColor.appBgColor, 14, FontWeight.w500),
            ),
            SizedBox(height: screenHeight * 0.02),
            Container(
              height: screenHeight * 0.06,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.appBgColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star, size: 20, color: AppColor.black),
                  SizedBox(width: screenWidth * 0.01),
                  Text(
                    recipe.rating.toString(),
                    style: const TextStyle(color: AppColor.black, fontSize: 16),
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  const Icon(Icons.timer, size: 20, color: AppColor.black),
                  SizedBox(width: screenWidth * 0.01),
                  Text(
                    '${recipe.prepTimeMinutes} min',
                    style: const TextStyle(color: AppColor.black, fontSize: 16),
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  const Icon(Icons.accessibility,
                      size: 20, color: AppColor.black),
                  SizedBox(width: screenWidth * 0.01),
                  Text(
                    '${recipe.caloriesPerServing}kcl',
                    style: const TextStyle(color: AppColor.black, fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
