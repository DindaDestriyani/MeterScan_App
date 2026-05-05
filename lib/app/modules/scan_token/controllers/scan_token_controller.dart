import 'package:get/get.dart';
import 'package:meterscan/app/routes/app_routes.dart';

class ScanTokenController
    extends GetxController {
  var hasilScan = ''.obs;

  // Scan dari kamera
  void scanToken() {
    hasilScan.value = "52.4 kWh";

    Future.delayed(
      const Duration(seconds: 1),
      () {
        Get.toNamed(
          AppRoutes.dashboardPrabayar,
        );
      },
    );
  }

  // Upload dari galeri
  void uploadGallery() {
    hasilScan.value = "48.9 kWh";

    Future.delayed(
      const Duration(seconds: 1),
      () {
        Get.toNamed(
          AppRoutes.dashboardPrabayar,
        );
      },
    );
  }
}