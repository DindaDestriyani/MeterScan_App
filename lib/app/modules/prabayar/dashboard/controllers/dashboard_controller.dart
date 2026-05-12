import 'package:get/get.dart';
import 'package:meterscan/app/routes/app_routes.dart';

class DashboardController extends GetxController {
  var sisaToken = 75.0.obs;
  var estimasiHari = 5.obs;

  var dailyUsage = <double>[
    2.5,
    3.2,
    2.8,
    4.0,
    3.1,
    2.9,
    3.5,
  ].obs;

  void goToInputToken() {
    Get.toNamed(AppRoutes.inputToken);
  }

  void goToScanToken() {
    Get.toNamed(AppRoutes.scanToken);
  }
}