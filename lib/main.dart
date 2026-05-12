import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
<<<<<<< HEAD
import 'package:meterscan/app/modules/notifikasi/controllers/notifikasi_controller.dart';
=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  runApp(
    GetMaterialApp(
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    ),
  );
}