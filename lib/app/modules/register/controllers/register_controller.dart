import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../routes/app_routes.dart';

class RegisterController extends GetxController {
  final usernameC = TextEditingController();

  final emailC = TextEditingController();

  final passwordC = TextEditingController();

  final confirmPasswordC = TextEditingController();

  final box = GetStorage();

  RxBool isHidden = true.obs;

  void togglePassword() {
    isHidden.value = !isHidden.value;
  }

  void register() {
    String username = usernameC.text.trim();

    String email = emailC.text.trim();

    String password = passwordC.text.trim();

    String confirmPassword = confirmPasswordC.text.trim();

    if (username.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      Get.snackbar("Error", "Semua field wajib diisi");
      return;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar("Error", "Format email tidak valid");
      return;
    }

    if (password.length < 8) {
      Get.snackbar("Error", "Password minimal 8 karakter");
      return;
    }

    if (password != confirmPassword) {
      Get.snackbar("Error", "Konfirmasi password tidak cocok");
      return;
    }

    // simpan data
    box.write("username", username);

    box.write("email", email);

    box.write("password", password);

    Get.snackbar(
      "Berhasil",
      "Registrasi berhasil",
      snackPosition: SnackPosition.BOTTOM,
    );

    Get.offNamed(AppRoutes.login);
  }

  @override
  void onClose() {
    usernameC.dispose();
    emailC.dispose();
    passwordC.dispose();
    confirmPasswordC.dispose();
    super.onClose();
  }
}
