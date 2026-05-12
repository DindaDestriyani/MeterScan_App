import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:meterscan/app/routes/app_routes.dart';
import '../controllers/notifikasi_controller.dart';
// import '../routes/app_routes.dart';

class NotifikasiView extends StatelessWidget {
  NotifikasiView({super.key});

  final controller = Get.put(NotifikasiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6FAFA),

      // ===== APPBAR =====
      appBar: AppBar(
        title: const Text("Notifikasi"),
      ),

      // ===== BODY =====
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // ===== FILTER =====
            Obx(() {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: controller.filters.map((f) {
                    final selected =
                        controller.selectedFilter.value == f;

                    return GestureDetector(
                      onTap: () => controller.changeFilter(f),
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: selected
                              ? const Color(0xFF00696B)
                              : Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          f,
                          style: TextStyle(
                            color: selected
                                ? Colors.white
                                : Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            }),

            const SizedBox(height: 16),

            // ===== LIST NOTIF =====
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.filtered.length,
                  itemBuilder: (context, i) {
                    final n = controller.filtered[i];

                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey.shade200),
                      ),

                      child: Row(
                        children: [
                          Icon(
                            n["icon"],
                            color: Color(n["color"]),
                          ),

                          const SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  n["title"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  n["desc"],
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            n["time"],
                            style: const TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),

      // ===== BOTTOM NAV SIMPLE (INI YANG KAMU MAU) =====
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF0F766E),
        unselectedItemColor: Colors.grey,

        onTap: (index) {
          if (index == 0) Get.offNamed(AppRoutes.home);
          if (index == 1) Get.offNamed(AppRoutes.riwayat);
          if (index == 2) Get.offNamed(AppRoutes.notifikasi);
          if (index == 3) Get.offNamed(AppRoutes.profile);
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "Riwayat"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifikasi"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
=======
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
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
    );
  }
}