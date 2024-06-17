import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/constants/textstyle.dart';
import 'package:recipe_app/screens/recipe/model/recipe_model.dart';
import 'package:recipe_app/screens/recipe/widgets/positioned_container.dart';
import 'package:recipe_app/utils/color.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: AppColor.black,
        leading: IconButton.filledTonal(
          color: AppColor.black,
          iconSize: 20,
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all<Color>(AppColor.appBgColor),
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
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    recipe.image,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            left: 10,
            top: 300,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: PostionedContainer(recipe: recipe),
            ),
          )
        ],
      ),
    );
  }
}
