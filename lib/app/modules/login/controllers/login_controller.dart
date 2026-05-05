import 'package:get/get.dart';
import 'package:meterscan/app/routes/app_routes.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;

  void login() {
    if (email.value.isEmpty ||
        password.value.isEmpty) {
      Get.snackbar(
        "Error",
        "Email dan Password wajib diisi",
      );
    } else {
      Get.offAllNamed(AppRoutes.home);
    }
  }
}