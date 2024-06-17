
import 'package:flutter/material.dart';
import 'package:recipe_app/constants/textstyle.dart';
import 'package:recipe_app/utils/color.dart';

class RecipeDetailTitle extends StatelessWidget {
  const RecipeDetailTitle({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.black,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColor.appBgColor,
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: lexend(AppColor.white, 20, FontWeight.w600),
        ),
      ),
    );
  }
}