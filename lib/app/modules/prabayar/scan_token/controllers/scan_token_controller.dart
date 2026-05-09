import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:meterscan/app/routes/app_routes.dart';

class ScanTokenController extends GetxController {
  final ImagePicker picker = ImagePicker();

  var imageBytes = Rxn<Uint8List>(); // untuk WEB
  var imagePath = ''.obs; // untuk MOBILE

  /// SCAN CAMERA
  Future<void> scanMeter() async {
    final XFile? image = await picker.pickImage(
      source: ImageSource.camera,
    );

    if (image != null) {
      if (kIsWeb) {
        imageBytes.value = await image.readAsBytes();
      } else {
        imagePath.value = image.path;
      }
    }
  }

  /// UPLOAD GALERI
  Future<void> uploadImage() async {
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (image != null) {
      if (kIsWeb) {
        imageBytes.value = await image.readAsBytes();
      } else {
        imagePath.value = image.path;
      }
    }
  }

  void savePhoto() {
    Get.snackbar("Berhasil", "Foto berhasil disimpan");
  }

  // void goToGraph() {
  //   Get.snackbar("Info", "Menu grafik dibuka");
  // }

  void goToGraph() {
    Get.offAllNamed(AppRoutes.prabayarDashboard);
  }
}