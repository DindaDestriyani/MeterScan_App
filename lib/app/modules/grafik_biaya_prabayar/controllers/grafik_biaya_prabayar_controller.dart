import 'package:get/get.dart';

class GrafikBiayaPrabayarController
    extends GetxController {
  var selectedFilter = "Mingguan".obs;

  var dataMingguan = <double>[
    12000,
    15000,
    13000,
    18000,
    16000,
    17000,
    15500,
  ].obs;

  var dataBulanan = <double>[
    320000,
    280000,
    350000,
    300000,
    340000,
    360000,
  ].obs;

  List<double> get currentData {
    if (selectedFilter.value ==
        "Bulanan") {
      return dataBulanan;
    }
    return dataMingguan;
  }

  void changeFilter(String value) {
    selectedFilter.value = value;
  }
}