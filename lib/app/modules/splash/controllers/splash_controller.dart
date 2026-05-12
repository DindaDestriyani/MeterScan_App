import 'dart:async';

import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();

    print("Splash jalan");

    Timer(
      const Duration(seconds: 3),
      () {

        print("Pindah login");

        Get.offNamed(AppRoutes.login);

      },
    );
  }
}