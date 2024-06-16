import 'package:flutter/material.dart';
import 'package:recipe_app/screens/recipe/model/recipe_model.dart';
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
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.black26,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
