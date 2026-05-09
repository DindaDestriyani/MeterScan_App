import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  DashboardView({super.key});

  final Color primaryColor =
      const Color(0xFF0F766E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFFF3F5F5),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.all(22),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                /// CARD TOKEN
                buildTokenCard(),

                const SizedBox(height: 25),

                /// STATUS
                Row(
                  children: [
                    Expanded(
                      child: buildStatusCard(),
                    ),

                    const SizedBox(width: 18),

                    Expanded(
                      child: buildTodayCard(),
                    ),
                  ],
                ),

                const SizedBox(height: 28),

                /// GRAFIK
                buildChart(),

                const SizedBox(height: 35),

                /// RIWAYAT
                const Text(
                  "RIWAYAT TERBARU",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 16,
                    fontWeight:
                        FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 20),

                buildHistoryCard(
                  Icons.edit_note,
                  "Pencatatan Token Manual",
                  "12 Okt 2023 • 14:20",
                  "+68.5 kWh",
                  Colors.teal,
                ),

                const SizedBox(height: 15),

                buildHistoryCard(
                  Icons.warning,
                  "Sisa Token Menipis",
                  "11 Okt 2023 • 09:15",
                  "",
                  Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTokenCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            primaryColor,
            Colors.teal.shade300,
          ],
        ),
        borderRadius:
            BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            "Sisa Token",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            "Rp 75.000",
            style: TextStyle(
              color: Colors.white,
              fontSize: 42,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "48.5 kWh tersisa",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed:
                controller.goToInputToken,
            child: const Text(
              "Catat Token Baru",
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStatusCard() {
    return Container(
      padding:
          const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text("Status"),
          const SizedBox(height: 20),
          Text(
            "HEMAT",
            style: TextStyle(
              color: primaryColor,
              fontSize: 24,
              fontWeight:
                  FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTodayCard() {
    return Container(
      padding:
          const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(22),
      ),
      child: const Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text("Hari Ini"),
          SizedBox(height: 20),
          Text(
            "3.2 kWh",
            style: TextStyle(
              fontSize: 28,
              fontWeight:
                  FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChart() {
    return Container(
      padding:
          const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(25),
      ),
      child: SizedBox(
        height: 250,
        child: BarChart(
          BarChartData(
            alignment:
                BarChartAlignment
                    .spaceAround,
            barGroups: [
              makeBar(0, 3),
              makeBar(1, 4),
              makeBar(2, 2),
              makeBar(3, 5),
              makeBar(4, 6),
              makeBar(5, 4),
              makeBar(6, 3),
            ],
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeBar(
    int x,
    double y,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          width: 20,
          borderRadius:
              BorderRadius.circular(8),
        ),
      ],
    );
  }

  Widget buildHistoryCard(
    IconData icon,
    String title,
    String date,
    String value,
    Color color,
  ) {
    return Container(
      padding:
          const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor:
                color.withOpacity(0.1),
            child: Icon(
              icon,
              color: color,
            ),
          ),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(date),
              ],
            ),
          ),

          Text(value),
        ],
      ),
    );
  }
}