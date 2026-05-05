import 'package:get/get.dart';
import 'package:meterscan/app/routes/app_routes.dart';

class HomeController extends GetxController {
  var username = "Andi".obs;

  void goToPrabayar() {
    Get.toNamed(
      AppRoutes.prabayar,
    );
  }

  void goToPascabayar() {
    Get.toNamed(
      AppRoutes.pascabayar,
    );
  }
}