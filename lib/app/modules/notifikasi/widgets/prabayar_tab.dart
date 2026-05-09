import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/notifikasi_controller.dart';

class PrabayarTab
    extends StatelessWidget {
  const PrabayarTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller =
        Get.find<
          NotifikasiController
        >();

    final data =
        controller.prabayarNotifikasi;

    return ListView.builder(
      padding:
          const EdgeInsets.all(20),
      itemCount: data.length,
      itemBuilder: (
        context,
        index,
      ) {
        final item = data[index];

        return Card(
          child: ListTile(
            title: Text(
              item["judul"],
            ),
            subtitle: Text(
              item["pesan"],
            ),
          ),
        );
      },
    );
  }
}