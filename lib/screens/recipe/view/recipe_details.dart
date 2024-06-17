import 'package:flutter/material.dart';
import 'package:recipe_app/constants/size.dart';
import 'package:recipe_app/constants/textstyle.dart';
import 'package:recipe_app/screens/recipe/model/recipe_model.dart';
import 'package:recipe_app/screens/recipe/widgets/positioned_container.dart';
import 'package:recipe_app/screens/recipe/widgets/recipedetail_appbar.dart';
import 'package:recipe_app/screens/recipe/widgets/recipedetail_title.dart';
import 'package:recipe_app/utils/color.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.07),
        child: RecipeDetailAppbar(recipe: recipe),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    recipe.image,
                  ),
                ),
                Positioned(
                  right: 10,
                  left: 10,
                  bottom: -15,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: PostionedContainer(recipe: recipe),
                  ),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            const RecipeDetailTitle(text: 'Ingredients'),
            SizedBox(height: screenHeight * 0.01),
            ...List.generate(
              recipe.ingredients.length,
              (index) {
                return Text(
                  '- ${recipe.ingredients[index]}',
                  style: lexend(AppColor.white, 15, FontWeight.w300),
                );
              },
            ),
            SizedBox(height: screenHeight * 0.03),
            const RecipeDetailTitle(text: 'Instructions'),
            SizedBox(height: screenHeight * 0.01),
            ...List.generate(
              recipe.instructions.length,
              (index) {
                return Text(
                  '- ${recipe.instructions[index]}',
                  style: lexend(AppColor.white, 15, FontWeight.w300),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

