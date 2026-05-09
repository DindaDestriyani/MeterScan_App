import 'package:get/get.dart';

class NotifikasiController
    extends GetxController {
  final RxList<Map<String, dynamic>>
      semuaNotifikasi =
      <Map<String, dynamic>>[
    {
      "tipe": "Prabayar",
      "judul": "Token hampir habis",
      "pesan":
          "Sisa token Anda tinggal 10 kWh",
      "waktu": "10 menit lalu",
    },
    {
      "tipe": "Pascabayar",
      "judul": "Overbudget",
      "pesan":
          "Prediksi tagihan melebihi budget",
      "waktu": "30 menit lalu",
    },
    {
      "tipe": "Prabayar",
      "judul": "Estimasi habis",
      "pesan":
          "Token akan habis dalam 3 hari",
      "waktu": "1 jam lalu",
    },
  ].obs;

  List<Map<String, dynamic>>
      get prabayarNotifikasi =>
          semuaNotifikasi
              .where(
                (item) =>
                    item["tipe"] ==
                    "Prabayar",
              )
              .toList();

  List<Map<String, dynamic>>
      get pascabayarNotifikasi =>
          semuaNotifikasi
              .where(
                (item) =>
                    item["tipe"] ==
                    "Pascabayar",
              )
              .toList();
}