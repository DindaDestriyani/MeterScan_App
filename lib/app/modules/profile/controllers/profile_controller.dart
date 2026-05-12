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

  void togglePassword() {
    isHidden.value = !isHidden.value;
  }

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