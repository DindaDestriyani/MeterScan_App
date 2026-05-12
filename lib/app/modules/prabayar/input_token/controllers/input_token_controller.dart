import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:intl/intl.dart';

import 'package:meterscan/app/routes/app_routes.dart';

class InputTokenController extends GetxController {

  final meterC = TextEditingController();
  final nominalC = TextEditingController();

  // ================= TARIF =================
  final tariffList = [
    "450 VA",
    "900 VA",
    "1300 VA",
    "2200 VA",
    "3500 VA",
    "4400 VA",
    "5500 VA",
  ];

  var selectedTariff = "1300 VA".obs;

  // ================= NOMINAL CEPAT =================
  final quickNominalList = [
    20000,
    50000,
    100000,
    200000,
    500000,
  ];

  // ================= HASIL =================
  var totalKwh = "0.00".obs;

  // ================= FORMAT RUPIAH =================
  final rupiahFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  // ================= AMBIL TARIF =================
  double getTariffValue() {
    switch (selectedTariff.value) {
      case "450 VA":
        return 415;

      case "900 VA":
        return 1352;

      case "1300 VA":
        return 1444;

      case "2200 VA":
        return 1444;

      case "3500 VA":
        return 1699;

      case "4400 VA":
        return 1699;

      case "5500 VA":
        return 1699;

      default:
        return 1444;
    }
  }

  // ================= FORMAT INPUT =================
  void formatNominal(String value) {

    String numbers =
        value.replaceAll(RegExp(r'[^0-9]'), '');

    if (numbers.isEmpty) {
      nominalC.text = '';
      return;
    }

    int number = int.parse(numbers);

    String formatted =
        rupiahFormat.format(number);

    nominalC.value = TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(
        offset: formatted.length,
      ),
    );

    calculateKwh();
  }

  // ================= PILIH NOMINAL CEPAT =================
  void selectQuickNominal(int nominal) {

    nominalC.text =
        rupiahFormat.format(nominal);

    calculateKwh();
  }

  // ================= HITUNG KWH =================
  void calculateKwh() {

    String clean =
        nominalC.text.replaceAll(
          RegExp(r'[^0-9]'),
          '',
        );

    double nominal =
        double.tryParse(clean) ?? 0;

    double tariff = getTariffValue();

    double result = nominal / tariff;
=======
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
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489

    totalKwh.value =
        result.toStringAsFixed(2);
  }

<<<<<<< HEAD
  // ================= SIMPAN =================
  void saveToken() {

=======
  void saveToken() {
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
    Get.snackbar(
      "Berhasil",
      "Token berhasil disimpan",
    );

    Get.toNamed(
      AppRoutes.scanToken,
    );
  }
<<<<<<< HEAD

  @override
  void onClose() {
    meterC.dispose();
    nominalC.dispose();
    super.onClose();
  }
=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
}