import 'package:get/get.dart';

class DashboardController extends GetxController {
  // USER
  var username = 'Ahmad'.obs;

  // ESTIMASI TAGIHAN
  var estimasiTagihan = 452800.obs;
  var persenPerubahan = (-4.2).obs;

  // STATUS
  var statusPenggunaan = 'Normal'.obs;
  var progressPenggunaan = 0.65.obs;

  // DATA BAR
  final List<double> kwhData = [
    4,
    2.5,
    5.5,
    3.2,
    4.8,
    1.9,
    0,
  ];

  final List<String> hari = [
    'Sen',
    'Sel',
    'Rab',
    'Kam',
    'Jum',
    'Sab',
    'Min',
  ];

  // DATA LINE
  final List<double> biayaData = [
    9000,
    10000,
    9800,
    12000,
    18000,
    22000,
    21000,
  ];

  // TIPS
  var tipsTitle = 'Matikan AC'.obs;

  var tipsDesc =
      'Mematikan AC saat suhu luar 24°C bisa menghemat Rp 12.000 hari ini.'
          .obs;
}