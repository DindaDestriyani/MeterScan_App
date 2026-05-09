// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:meterscan/app/routes/app_routes.dart';

// class PascabayarController
//     extends GetxController {
//   final idPelangganController =
//       TextEditingController();

//   final budgetController =
//       TextEditingController();

//   var selectedTarif =
//       "R1 / 1300 VA".obs;

//   var tarifPerKwh = 1467.obs;

//   var budgetBulanan = 0.obs;

//   void updateBudget(String value) {
//     if (value.isNotEmpty) {
//       budgetBulanan.value =
//           int.parse(value);
//     } else {
//       budgetBulanan.value = 0;
//     }
//   }

//   void simpanDanScan() {
//     if (idPelangganController
//             .text
//             .isEmpty ||
//         budgetController
//             .text
//             .isEmpty) {
//       Get.snackbar(
//         "Error",
//         "Semua field wajib diisi",
//       );
//       return;
//     }

//     // Get.toNamed(
//     //   AppRoutes.scanMeterPascabayar,
//     // );
//   }

//   @override
//   void onClose() {
//     idPelangganController.dispose();
//     budgetController.dispose();
//     super.onClose();
//   }
// }