<<<<<<< HEAD
import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  // ===== DATA USER =====
  var username = "User".obs;
  var email = "user@mail.com".obs;

  // ===== FOTO PROFILE =====
  var imagePath = "".obs;
  final ImagePicker picker = ImagePicker();

  // ===== TEXT EDIT CONTROLLER =====
  TextEditingController usernameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  var isHidden = true.obs;

=======
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
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
  void togglePassword() {
    isHidden.value = !isHidden.value;
  }

<<<<<<< HEAD
  // ===== PICK IMAGE =====
  Future<void> pickImage() async {
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (image != null) {
      imagePath.value = image.path;
    }
  }

  // ===== SAVE PROFILE =====
  void saveProfile() {
    username.value = usernameC.text;
    email.value = emailC.text;

    Get.back();
  }
}
=======
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
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
