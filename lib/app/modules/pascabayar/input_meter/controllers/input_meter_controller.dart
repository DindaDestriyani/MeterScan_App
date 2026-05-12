import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class InputMeterController extends GetxController {

  final ImagePicker picker = ImagePicker();

  // ================= TEXT CONTROLLER =================
  final TextEditingController meterIdController =
      TextEditingController();

  final TextEditingController budgetController =
      TextEditingController(
    text: '500,000',
  );

  // ================= STATE =================
  RxBool isBudgetActive = true.obs;

  Rx<XFile?> selectedImage =
      Rx<XFile?>(null);

  // ================= CAMERA =================
  Future<void> ambilFoto() async {

    final XFile? image =
        await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 80,
    );

    if (image != null) {
      selectedImage.value = image;
    }
  }

  // ================= GALLERY =================
  Future<void> unggahGambar() async {

    final XFile? image =
        await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (image != null) {
      selectedImage.value = image;
    }
  }

  // ================= PREVIEW IMAGE =================
  ImageProvider getPreviewImage() {

    // MOBILE
    if (!GetPlatform.isWeb &&
        selectedImage.value != null) {

      return FileImage(
        File(selectedImage.value!.path),
      );
    }

    // WEB
    if (GetPlatform.isWeb &&
        selectedImage.value != null) {

      return NetworkImage(
        selectedImage.value!.path,
      );
    }

    // DEFAULT IMAGE
    return const AssetImage(
      'assets/images/meter.jpg',
    );
  }

  @override
  void onClose() {

    meterIdController.dispose();
    budgetController.dispose();

    super.onClose();
  }
}