
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/constants/textstyle.dart';
import 'package:recipe_app/screens/recipe/model/recipe_model.dart';
import 'package:recipe_app/utils/color.dart';

class RecipeDetailAppbar extends StatelessWidget {
  const RecipeDetailAppbar({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      backgroundColor: AppColor.black,
      leading: IconButton.filledTonal(
        color: AppColor.black,
        iconSize: 20,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(AppColor.appBgColor),
          minimumSize: WidgetStateProperty.all<Size>(const Size(10, 10)),
          maximumSize: WidgetStateProperty.all<Size>(const Size(30, 30)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {
          Get.back();
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: Text(
        'Cuisine : ${recipe.cuisine}',
        style: lexend(AppColor.white, 22, FontWeight.w600),
      ),
    );
  }
}
