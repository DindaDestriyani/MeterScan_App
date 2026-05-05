import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/riwayat_controller.dart';

class RiwayatPascabayarTab
    extends StatelessWidget {
  RiwayatPascabayarTab({
    super.key,
  });

  final RiwayatController controller =
      Get.put(
    RiwayatController(),
  );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount:
            controller
                .riwayatPascabayar
                .length,
        itemBuilder: (
          context,
          index,
        ) {
          final item =
              controller
                  .riwayatPascabayar[index];

          return ListTile(
            title: Text(
              item["bulan"]
                  .toString(),
            ),
            subtitle: Text(
              "Rp ${item["tagihan"]}",
            ),
          );
        },
      ),
    );
  }
}