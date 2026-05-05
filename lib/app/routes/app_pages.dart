import 'package:get/get.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/login/views/login_view.dart';
import 'package:meterscan/app/modules/register/views/register_view.dart';
import 'package:meterscan/app/modules/home/views/home_view.dart';
import 'package:meterscan/app/modules/prabayar/views/prabayar_view.dart';
import 'package:meterscan/app/modules/scan_token/views/scan_token_view.dart';
import 'package:meterscan/app/modules/dashboard_prabayar/views/dashboard_prabayar_view.dart';
import 'package:meterscan/app/modules/grafik_pemakaian_prabayar/views/grafik_pemakaian_prabayar_view.dart';
import 'package:meterscan/app/modules/grafik_biaya_prabayar/views/grafik_biaya_prabayar_view.dart';
import 'package:meterscan/app/modules/riwayat/views/riwayat_view.dart';
import 'package:meterscan/app/modules/pascabayar/views/pascabayar_view.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashView(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginView(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => RegisterView(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
    ),
    GetPage(
      name: AppRoutes.prabayar,
      page: () => PrabayarView(),
    ),
    GetPage(
      name: AppRoutes.scanToken,
      page: () => ScanTokenView(),
    ),
    GetPage(
      name: AppRoutes.dashboardPrabayar,
      page: () => DashboardPrabayarView(),
    ),
    GetPage(
      name: AppRoutes.grafikPemakaianPrabayar,
      page: () =>
          GrafikPemakaianPrabayarView(),
    ),
    GetPage(
      name: AppRoutes.grafikBiayaPrabayar,
      page: () =>
          GrafikBiayaPrabayarView(),
    ),
    GetPage(
      name: AppRoutes.riwayat,
      page: () => RiwayatView(),
    ),
    GetPage(
      name: AppRoutes.pascabayar,
      page: () => PascabayarView(),
    ),
  ];
}