import 'package:get/get.dart';
import 'package:meterscan/app/modules/notifikasi/bindings/notifikasi_binding.dart';
import 'package:meterscan/app/modules/pascabayar/hasil_scan/bindings/hasil_scan_binding.dart';
import 'package:meterscan/app/modules/pascabayar/hasil_scan/views/hasil_scan_view.dart';
import 'package:meterscan/app/modules/pascabayar/input_meter/bindings/input_meter_binding.dart';
import 'package:meterscan/app/modules/pascabayar/input_meter/views/input_meter_view.dart';

import 'package:meterscan/app/modules/splash/views/splash_view.dart';

import 'package:meterscan/app/modules/login/views/login_view.dart';
import 'package:meterscan/app/modules/login/bindings/login_binding.dart';
import '../modules/pascabayar/input_meter/bindings/input_meter_binding.dart';

import 'package:meterscan/app/modules/register/views/register_view.dart';
import 'package:meterscan/app/modules/register/bindings/register_binding.dart';
import '../modules/riwayat/bindings/riwayat_binding.dart';
import '../modules/riwayat/views/riwayat_view.dart';
import 'package:meterscan/app/modules/home/views/home_view.dart';

// import 'package:meterscan/app/modules/prabayar/dashboard/views/dashboard_view.dart';
// import 'package:meterscan/app/modules/prabayar/dashboard/bindings/dashboard_binding.dart';

// import '../modules/pascabayar/dashboard/views/dashboard_view.dart';
// import '../modules/pascabayar/dashboard/bindings/dashboard_binding.dart';

import 'package:meterscan/app/modules/prabayar/dashboard/views/dashboard_view.dart'
    as prabayar;

import 'package:meterscan/app/modules/prabayar/dashboard/bindings/dashboard_binding.dart'
    as prabayar;

import 'package:meterscan/app/modules/pascabayar/dashboard/views/dashboard_view.dart'
    as pasca;

import 'package:meterscan/app/modules/pascabayar/dashboard/bindings/dashboard_binding.dart'
    as pasca;

import 'package:meterscan/app/modules/prabayar/input_token/views/input_token_view.dart';
import 'package:meterscan/app/modules/prabayar/input_token/bindings/input_token_binding.dart';

import 'package:meterscan/app/modules/prabayar/scan_token/views/scan_token_view.dart';
import 'package:meterscan/app/modules/prabayar/scan_token/bindings/scan_token_binding.dart';

import 'package:meterscan/app/modules/prabayar/input_token/bindings/input_token_binding.dart';
import 'package:meterscan/app/modules/prabayar/input_token/views/input_token_view.dart';

import 'package:meterscan/app/modules/grafik_pemakaian_prabayar/views/grafik_pemakaian_prabayar_view.dart';
import 'package:meterscan/app/modules/grafik_biaya_prabayar/views/grafik_biaya_prabayar_view.dart';

import 'package:meterscan/app/modules/riwayat/views/riwayat_view.dart';
import 'package:meterscan/app/modules/pascabayar/views/pascabayar_view.dart';
import 'package:meterscan/app/modules/notifikasi/views/notifikasi_view.dart';

import 'package:meterscan/app/modules/profile/views/profile_view.dart';
import 'package:meterscan/app/modules/profile/bindings/profile_binding.dart';
import 'package:meterscan/app/modules/profile/views/profile_edit_view.dart';

import 'package:meterscan/app/modules/reminder/views/reminder_view.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
    ),

    GetPage(
      name: AppRoutes.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),

    GetPage(
      name: AppRoutes.register,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),

    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
    ),

    // GetPage(
    //   name: AppRoutes.prabayarDashboard,
    //   page: () => DashboardView(),
    //   binding: DashboardBinding(),
    // ),

    GetPage(
      name: AppRoutes.prabayarDashboard,
      page: () => prabayar.DashboardView(),
      binding: prabayar.DashboardBinding(),
    ),

    GetPage(
      name: AppRoutes.inputToken,
      page: () => InputTokenView(),
      binding: InputTokenBinding(),
    ),

    GetPage(
      name: AppRoutes.scanToken,
      page: () => ScanTokenView(),
      binding: ScanTokenBinding(),
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
      name: AppRoutes.dashboardPasca,
      page: () => pasca.DashboardView(),
      binding: pasca.DashboardBinding(),
    ),

    // GetPage(
    //   name: AppRoutes.inputMeterPascabayar,
    //   page: () => InputMeterView(),
    //   binding: InputMeterBinding(),
    // ),

    GetPage(
      name: AppRoutes.inputMeter,
      page: () => InputMeterView(),
      binding: InputMeterBinding(),
    ),

    GetPage(
      name: AppRoutes.hasilScan,
      page: () => const HasilScanView(),
      binding: HasilScanBinding(),
    ),

    // GetPage(
    //   name: AppRoutes.scanHarianPascabayar,
    //   page: () => ScanHarianView(),
    //   binding: ScanHarianBinding(),
    // ),

    // GetPage(
    //   name: AppRoutes.riwayat,
    //   page: () => RiwayatView(),
    // ),

    GetPage(
      name: AppRoutes.riwayat,
      page: () => RiwayatView(),
      binding: RiwayatBinding(),
    ),

    // GetPage(
    //   name: AppRoutes.pascabayar,
    //   page: () => PascabayarView(),
    // ),

    GetPage(
      name: AppRoutes.notifikasi,
      page: () => NotifikasiView(),
    ),
    
    GetPage(
      name: '/notifikasi',
      page: () => NotifikasiView(),
      binding: NotifikasiBinding(),
    ),

    GetPage(
      name: AppRoutes.profile,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),

    GetPage(
      name: AppRoutes.reminder,
      page: () => ReminderView(),
    ),

    // GetPage(
    //   name: AppRoutes.editProfile,
    //   page: () => EditProfileView(),
    // ),

    GetPage(
      name: AppRoutes.editProfile,
      page: () => ProfileEditView(),
      // binding: ProfileBinding(),
    ),
  ];
}