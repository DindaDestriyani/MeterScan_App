import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'package:meterscan/app/routes/app_routes.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeController controller = Get.put(HomeController());

  final Color primaryColor = const Color(0xFF0F766E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F7),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,

        onTap: (index) {
          if (index == 0) {
            Get.toNamed(AppRoutes.home);
          } else if (index == 1) {
            Get.toNamed(AppRoutes.riwayat);
          } else if (index == 2) {
            Get.toNamed(AppRoutes.notifikasi);
          } else if (index == 3) {
            Get.toNamed(AppRoutes.profile);
          }
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "Riwayat"),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifikasi",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // LOGO HEADER
                Row(
                  children: [
                    Icon(Icons.bolt, color: primaryColor, size: 28),

                    const SizedBox(width: 8),

                    Text(
                      "MeterScan",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // GREETING
                Obx(
                  () => Text(
<<<<<<< HEAD
                    "Hai, ${controller.username.value} ",
=======
                    "Hai, ${controller.username.value} 👋",
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Kelola penggunaan listrikmu\ndengan mudah",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 25),

                // RINGKASAN BULAN INI
                Obx(() {
                  final prabayar = controller.prabayarData.value;
                  final pascabayar = controller.pascabayarData.value;

                  Widget buildPrabayar() {
                    if (prabayar == null) {
                      return const Text(
                        "Belum ada data penggunaan",
                        style: TextStyle(color: Colors.white70),
                      );
                    }

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Prabayar",
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Sisa Token",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "${prabayar.sisaToken} kWh",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "Estimasi habis ${prabayar.estimasiHabis}",
                          style: const TextStyle(color: Colors.white70),
                        ),
                      ],
                    );
                  }

                  Widget buildPascabayar() {
                    if (pascabayar == null) {
                      return const Text(
                        "Belum ada data penggunaan",
                        style: TextStyle(color: Colors.white70),
                      );
                    }

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Pascabayar",
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Estimasi Tagihan",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "Rp${pascabayar.tagihan}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "${pascabayar.kwh} kWh bulan ini",
                          style: const TextStyle(color: Colors.white70),
                        ),
                      ],
                    );
                  }

                  return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Ringkasan Bulan Ini",
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),

                        const SizedBox(height: 20),

                        buildPrabayar(),

                        const SizedBox(height: 20),

                        buildPascabayar(),
                      ],
                    ),
                  );
                }),

                const SizedBox(height: 30),

                // LAYANAN
                const Text(
                  "Layanan",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 20),

                // CARD KIRI KANAN
                Row(
                  children: [
                    Expanded(
                      child: serviceCard(
                        title: "Prabayar",
                        subtitle: "Pantau token listrik",
                        icon: Icons.bolt,
                        onTap: controller.goToPrabayar,
                      ),
                    ),

                    const SizedBox(width: 16),

                    Expanded(
                      child: serviceCard(
                        title: "Pascabayar",
                        subtitle: "Pantau tagihan listrik",
                        icon: Icons.receipt_long,
                        onTap: controller.goToPascabayar,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget serviceCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),

      child: Container(
        height: 180,
        padding: const EdgeInsets.all(20),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.12),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, color: primaryColor, size: 28),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),

            Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.arrow_forward, color: primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
