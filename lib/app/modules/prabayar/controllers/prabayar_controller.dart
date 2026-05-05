import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meterscan/app/routes/app_routes.dart';

class PrabayarController extends GetxController {
  final idTokenController = TextEditingController();

  final nominalController = TextEditingController();

  var tarifTerpilih = "Rp 1.467 / kWh".obs;

  var totalKwh = 0.0.obs;

  final Map<String, double> daftarTarif = {
    "Rp 1.467 / kWh": 1467,
    "Rp 1.699 / kWh": 1699,
    "Rp 1.444 / kWh": 1444,
  };

  void hitungKwh() {
    double nominal = double.tryParse(nominalController.text) ?? 0;

    double tarif = daftarTarif[tarifTerpilih.value] ?? 1467;

    totalKwh.value = nominal / tarif;
  }

  void simpanToken() {
    if (idTokenController.text.isEmpty || nominalController.text.isEmpty) {
      Get.snackbar("Error", "Semua data wajib diisi");
      return;
    }

    Get.toNamed(AppRoutes.scanToken);
  }

  @override
  void onClose() {
    idTokenController.dispose();
    nominalController.dispose();
    super.onClose();
  }
}
