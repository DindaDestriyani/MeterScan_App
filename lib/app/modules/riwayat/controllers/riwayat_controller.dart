import 'package:get/get.dart';

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
}