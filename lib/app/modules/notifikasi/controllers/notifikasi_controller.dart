import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotifikasiController extends GetxController {
  var selectedFilter = "Semua".obs;

  final filters = ["Semua", "Prabayar", "Pascabayar"];

  final notifications = <Map<String, dynamic>>[
    {
      "type": "prabayar",
      "title": "Saldo Rendah",
      "desc": "Sisa saldo listrik Anda kurang dari Rp 20.000.",
      "time": "10:30 WIB",
      "icon": Icons.warning,
      "color": 0xFFFF0000
    },
    {
      "type": "pascabayar",
      "title": "Tagihan Tersedia",
      "desc": "Tagihan listrik periode Oktober sudah terbit.",
      "time": "2 Jam lalu",
      "icon": Icons.receipt_long,
      "color": 0xFF2196F3
    },
    {
      "type": "prabayar",
      "title": "Token Berhasil",
      "desc": "Input token Rp 100.000 berhasil dilakukan.",
      "time": "08:15 WIB",
      "icon": Icons.check_circle,
      "color": 0xFF4CAF50
    },
    {
      "type": "pascabayar",
      "title": "Mendekati Budget",
      "desc": "Pemakaian sudah mencapai 85% dari limit.",
      "time": "Kemarin",
      "icon": Icons.trending_up,
      "color": 0xFFFF9800
    },
  ];

  void changeFilter(String value) {
    selectedFilter.value = value;
  }

  List<Map<String, dynamic>> get filtered {
    if (selectedFilter.value == "Semua") return notifications;

    return notifications
        .where((e) =>
            e["type"].toString().toLowerCase() ==
            selectedFilter.value.toLowerCase())
        .toList();
  }
}