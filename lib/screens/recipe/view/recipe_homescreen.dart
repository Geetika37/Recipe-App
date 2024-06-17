import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/constants/size.dart';
import 'package:recipe_app/constants/textstyle.dart';
import 'package:recipe_app/screens/recipe/controller/recipe_controller.dart';
import 'package:recipe_app/screens/recipe/model/recipe_model.dart';
import 'package:recipe_app/screens/recipe/widgets/custom_carouselslider.dart';
import 'package:recipe_app/screens/recipe/widgets/custom_divider.dart';
import 'package:recipe_app/screens/recipe/widgets/recipe_item.dart';
import 'package:recipe_app/utils/color.dart';

class RecipeHomescreen extends StatefulWidget {
  const RecipeHomescreen({super.key});

  @override
  State<RecipeHomescreen> createState() => _RecipeHomescreenState();
}

class _RecipeHomescreenState extends State<RecipeHomescreen> {
  List<Recipe> recipe = [];
  bool isLoading = false;
  final RecipeController recipeController = Get.put(RecipeController());

  @override
  void initState() {
    myRecipe();
    super.initState();
  }

  myRecipe() {
    isLoading = true;
    recipeController.recipeDetails().then((value) {
      setState(() {
        recipe = value;
        isLoading = false;
      });
    });
  }

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
            'RecipE BooK',
            style: lexend(AppColor.white, 24, FontWeight.w600),
          ),
        ),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppColor.appBgColor,
              ),
            )
          : Column(
              children: [
                const CustomDivider(),
                const CustomCarousel(),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  '-- MENU --',
                  style: lexend(AppColor.white, 20, FontWeight.w600),
                ),
                Expanded(
                  child: RecipeItem(recipe: recipe),
                ),
              ],
            ),
    );
  }
}
