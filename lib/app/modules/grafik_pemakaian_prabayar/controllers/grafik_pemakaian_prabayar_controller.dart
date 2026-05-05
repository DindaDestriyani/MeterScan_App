import 'package:get/get.dart';

class GrafikPemakaianPrabayarController
    extends GetxController {
  var selectedFilter = "Mingguan".obs;

  var dataHarian = [
    2.1,
    3.4,
    2.8,
    4.0,
    3.7,
    3.2,
    4.1
  ].obs;

  var dataBulanan = [
    78.0,
    82.0,
    75.0,
    90.0,
    88.0,
    95.0
  ].obs;

  List<double> get currentData {
    if (selectedFilter.value == "Bulanan") {
      return dataBulanan;
    }
    return dataHarian;
  }

  void changeFilter(String value) {
    selectedFilter.value = value;
  }
}