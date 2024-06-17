import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/constants/size.dart';
import 'package:recipe_app/constants/textstyle.dart';
import 'package:recipe_app/screens/recipe/model/recipe_model.dart';
import 'package:recipe_app/screens/recipe/view/recipe_details.dart';
import 'package:recipe_app/utils/color.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({
    super.key,
    required this.recipe,
  });

  final List<Recipe> recipe;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recipe.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Get.to(RecipeDetails(recipe: recipe[index]));
            },
            child: Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(recipe[index].image),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 2, color: AppColor.appBgColor),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        color: Color.fromARGB(255, 139, 87, 8),
                        offset: Offset(-1, 2),
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              recipe[index].name,
                              style: lexend(
                                  AppColor.appBgColor, 16, FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 234, 212, 11),
                            size: 15,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            recipe[index].rating.toString(),
                            style: lexend(
                                AppColor.appBgColor, 15, FontWeight.w400),
                          ),
                          SizedBox(width: screenWidth * 0.03),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
