import 'package:get/get.dart';
import 'package:meterscan/app/routes/app_routes.dart';

class HomeController extends GetxController {
  var username = ''.obs;

  // 🔥 TAMBAHAN INI
  var prabayarData = Rxn<PrabayarModel>();
  var pascabayarData = Rxn<PascabayarModel>();

  @override
  void onInit() {
    super.onInit();

    String email = Get.arguments ?? "";

    if (email.isNotEmpty && email.contains("@")) {
      String name = email.split("@")[0];

      username.value =
          name[0].toUpperCase() +
          name.substring(1);
    }

    // 🔥 CONTOH DATA (hapus kalau sudah pakai API / database)
    prabayarData.value = PrabayarModel(
      sisaToken: 75,
      estimasiHabis: "5 hari lagi",
    );

    pascabayarData.value = null; // contoh tidak ada data
  }

  void goToPrabayar() {
  Get.toNamed(
    AppRoutes.prabayarDashboard,
  );
}
  void goToPascabayar() {
    Get.toNamed(AppRoutes.dashboardPasca);
  }
}


class PrabayarModel {
  final int sisaToken;
  final String estimasiHabis;

  PrabayarModel({
    required this.sisaToken,
    required this.estimasiHabis,
  });
}

class PascabayarModel {
  final int kwh;
  final int tagihan;

  PascabayarModel({
    required this.kwh,
    required this.tagihan,
  });
}