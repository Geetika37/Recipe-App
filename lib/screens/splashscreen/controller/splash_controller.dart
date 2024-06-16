import 'package:get/get.dart';
import 'package:recipe_app/screens/recipe/view/recipe_homescreen.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    navigateToHome();
    super.onReady();
  }

  Future navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1));
    Get.offAll(() => const RecipeHomescreen());
  }
}
