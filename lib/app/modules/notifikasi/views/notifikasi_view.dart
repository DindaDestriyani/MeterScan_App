import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/notifikasi_controller.dart';
import '../widgets/semua_tab.dart';
import '../widgets/prabayar_tab.dart';
import '../widgets/pascabayar_tab.dart';

class NotifikasiView
    extends StatelessWidget {
  NotifikasiView({
    super.key,
  });

  final NotifikasiController controller =
      Get.put(
    NotifikasiController(),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor:
            Colors.grey.shade50,

        appBar: AppBar(
          title: const Text(
            "Notifikasi",
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Semua",
              ),
              Tab(
                text: "Prabayar",
              ),
              Tab(
                text: "Pascabayar",
              ),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            SemuaTab(),
            PrabayarTab(),
            PascabayarTab(),
          ],
        ),
      ),
    );
  }
}