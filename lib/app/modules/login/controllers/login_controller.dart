import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../routes/app_routes.dart';

class LoginController
    extends GetxController {
  final emailC =
      TextEditingController();

  final passwordC =
      TextEditingController();

  final box = GetStorage();

  RxBool isHidden = true.obs;

  void togglePassword() {
    isHidden.value =
        !isHidden.value;
  }

  void login() {
    String email =
        emailC.text.trim();

    String password =
        passwordC.text.trim();

    String savedEmail =
        box.read("email") ?? "";

    String savedPassword =
        box.read("password") ?? "";

    if (email.isEmpty ||
        password.isEmpty) {
      Get.snackbar(
        "Error",
        "Email dan password wajib diisi",
      );
      return;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar(
        "Error",
        "Format email tidak valid",
      );
      return;
    }

    if (password.length < 8) {
      Get.snackbar(
        "Error",
        "Password minimal 8 karakter",
      );
      return;
    }

    if (email == savedEmail &&
        password ==
            savedPassword) {
      Get.snackbar(
        "Berhasil",
        "Login berhasil",
      );

      Get.offAllNamed(
        AppRoutes.home,
        arguments: email,
      );
    } else {
      Get.snackbar(
        "Gagal",
        "Email atau password salah",
      );
    }
  }

  @override
  void onClose() {
    emailC.dispose();
    passwordC.dispose();
    super.onClose();
  }
}