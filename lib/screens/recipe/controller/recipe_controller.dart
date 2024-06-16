import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:recipe_app/screens/recipe/model/recipe_model.dart';

class RecipeController extends GetxController {
  recipeDetails() async {
    const url = 'https://dummyjson.com/recipe';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    try {
      if (response.statusCode == 200) {
        var data = recipeModelFromJson(response.body);
        return data.recipes;
      } else {
        print('error occured');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
