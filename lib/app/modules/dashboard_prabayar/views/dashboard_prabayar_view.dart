import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:meterscan/app/routes/app_routes.dart';
import '../controllers/dashboard_prabayar_controller.dart';

class DashboardPrabayarView extends StatelessWidget {
  DashboardPrabayarView({super.key});

  final DashboardPrabayarController controller = Get.put(
    DashboardPrabayarController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,

      appBar: AppBar(
        title: const Text("Dashboard Prabayar"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // CARD SISA TOKEN
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sisa Token",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),

                  const SizedBox(height: 10),

                  Obx(
                    () => Text(
                      "${controller.sisaToken.value} kWh",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // STATISTIK
            Row(
              children: [
                Expanded(
                  child: Obx(
                    () => statCard(
                      "Estimasi Habis",
                      "${controller.estimasiHabisHari.value} Hari",
                      Icons.timer,
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Obx(
                    () => statCard(
                      "Hari Ini",
                      "${controller.pemakaianHariIni.value} kWh",
                      Icons.flash_on,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Obx(
              () => statCard(
                "Biaya Terpakai",
                "Rp ${controller.biayaTerpakai.value}",
                Icons.payments,
              ),
            ),

            const SizedBox(height: 30),

            // JUDUL GRAFIK
            const Text(
              "Grafik Pemakaian Mingguan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            // CHART
            Container(
              padding: const EdgeInsets.all(20),
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Obx(
                () => LineChart(
                  LineChartData(
                    gridData: FlGridData(show: true),
                    borderData: FlBorderData(show: false),
                    titlesData: FlTitlesData(show: true),
                    lineBarsData: [
                      LineChartBarData(
                        isCurved: true,
                        barWidth: 4,
                        spots: List.generate(
                          controller.dataPemakaian.length,
                          (index) => FlSpot(
                            index.toDouble(),
                            controller.dataPemakaian[index].toDouble(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // BUTTON LIHAT GRAFIK BIAYA
            SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.grafikBiayaPrabayar);
                },
                child: const Text("Lihat Grafik Biaya"),
              ),
            ),

            const SizedBox(height: 15),

            // BUTTON SCAN ULANG
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.camera_alt),
                label: const Text("Scan Ulang Meter"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget statCard(String title, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon),

          const SizedBox(height: 10),

          Text(title, style: const TextStyle(color: Colors.grey)),

          const SizedBox(height: 8),

          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
