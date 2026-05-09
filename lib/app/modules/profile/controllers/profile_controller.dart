import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class ProfileController extends GetxController {
  // =========================
  // TextField Controllers
  // =========================
  final TextEditingController usernameC = TextEditingController();

  final TextEditingController emailC = TextEditingController();

  final TextEditingController passwordC = TextEditingController();

  // =========================
  // Reactive Profile Data
  // =========================
  final RxString username = "Aditya Pratama".obs;

  final RxString email = "aditya.pratama@email.com".obs;

  final RxString password = "123456789".obs;

  // =========================
  // Hide Password
  // =========================
  final RxBool isHidden = true.obs;

  @override
  void onInit() {
    super.onInit();

    // isi form dari data profile
    usernameC.text = username.value;
    emailC.text = email.value;
    passwordC.text = password.value;
  }

  // show / hide password
  void togglePassword() {
    isHidden.value = !isHidden.value;
  }

  void saveProfile() {
    if (usernameC.text.trim().isEmpty ||
        emailC.text.trim().isEmpty ||
        passwordC.text.trim().isEmpty) {
      Get.snackbar(
        "Gagal",
        "Semua data wajib diisi",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    // update data profile
    username.value = usernameC.text.trim();

    email.value = emailC.text.trim();

    password.value = passwordC.text.trim();

    // notif sukses
    Get.snackbar(
      "Berhasil",
      "Profile berhasil diperbarui",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );

    // pindah otomatis ke halaman profile
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(AppRoutes.profile);
    });
  }

  @override
  void onClose() {
    usernameC.dispose();
    emailC.dispose();
    passwordC.dispose();

    super.onClose();
  }
}
