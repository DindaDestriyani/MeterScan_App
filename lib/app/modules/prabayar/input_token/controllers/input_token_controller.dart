import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meterscan/app/routes/app_routes.dart';

class InputTokenController
    extends GetxController {
  final meterC = TextEditingController();
  final nominalC =
      TextEditingController();

  var totalKwh = "0.00".obs;

  var tariffList = [
    "1467",
    "1699",
    "1444",
  ];

  var selectedTariff = "1467".obs;

  void calculateKwh() {
    double nominal =
        double.tryParse(
              nominalC.text,
            ) ??
            0;

    double tariff =
        double.parse(
      selectedTariff.value,
    );

    double result =
        nominal / tariff;

    totalKwh.value =
        result.toStringAsFixed(2);
  }

  void saveToken() {
    Get.snackbar(
      "Berhasil",
      "Token berhasil disimpan",
    );

    Get.toNamed(
      AppRoutes.scanToken,
    );
  }
}