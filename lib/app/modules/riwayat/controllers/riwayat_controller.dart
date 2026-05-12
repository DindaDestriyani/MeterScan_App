import 'package:get/get.dart';

<<<<<<< HEAD
class RiwayatController extends GetxController {

  // true = prabayar
  // false = pascabayar
  RxBool isPrabayar = true.obs;

  RxInt bottomNavIndex = 3.obs;

  void changeTab(bool value) {
    isPrabayar.value = value;
  }

  void changeBottomNav(int index) {
    bottomNavIndex.value = index;
  }
=======
class RiwayatController
    extends GetxController {
  final RxList<Map<String, dynamic>>
      riwayatPrabayar =
      <Map<String, dynamic>>[
    {
      "tanggal": "05 Mei 2026",
      "idToken": "123456789012",
      "nominal": "100000",
      "kwh": "68.1",
      "status": "Berhasil",
    },
    {
      "tanggal": "28 Apr 2026",
      "idToken": "123456789012",
      "nominal": "50000",
      "kwh": "34.0",
      "status": "Berhasil",
    },
  ].obs;

  final RxList<Map<String, dynamic>>
      riwayatPascabayar =
      <Map<String, dynamic>>[
    {
      "bulan": "Mei 2026",
      "tagihan": "275000",
      "pemakaian": "185",
      "status": "Lunas",
    },
    {
      "bulan": "April 2026",
      "tagihan": "240000",
      "pemakaian": "170",
      "status": "Lunas",
    },
  ].obs;
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
}