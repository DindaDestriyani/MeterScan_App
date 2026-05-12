import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/grafik_pemakaian_prabayar_controller.dart';

class GrafikPemakaianPrabayarView
    extends StatelessWidget {
  GrafikPemakaianPrabayarView({
    super.key,
  });

  final GrafikPemakaianPrabayarController controller =
      Get.put(
    GrafikPemakaianPrabayarController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Grafik Pemakaian Prabayar",
        ),
      ),
      body: const Center(
        child: Text(
          "Halaman Grafik Pemakaian Prabayar",
        ),
      ),
    );
  }
}