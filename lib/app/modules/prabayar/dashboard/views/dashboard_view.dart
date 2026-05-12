import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  DashboardView({super.key});

<<<<<<< HEAD
  final Color primaryColor = const Color(0xFF0F766E);
=======
  final Color primaryColor =
      const Color(0xFF0F766E);
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      backgroundColor: const Color(0xFFF3F5F5),

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),

          child: Padding(
            padding: const EdgeInsets.all(22),
=======
      backgroundColor:
          const Color(0xFFF3F5F5),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.all(22),
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
<<<<<<< HEAD

              children: [

                // =========================
                // HEADER
                // =========================

                Row(
                  children: [

                    IconButton(
                      icon:
                          const Icon(Icons.arrow_back),

                      onPressed: () {
                        Get.offAllNamed('/home');
                      },
                    ),

                    const SizedBox(width: 5),

                    const Text(
                      "Dashboard Prabayar",

                      style: TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // =========================
                // TOKEN CARD
                // =========================

=======
              children: [
                const SizedBox(height: 10),

                /// CARD TOKEN
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
                buildTokenCard(),

                const SizedBox(height: 25),

<<<<<<< HEAD
                // =========================
                // STATUS
                // =========================

                Row(
                  children: [

=======
                /// STATUS
                Row(
                  children: [
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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

<<<<<<< HEAD
                // =========================
                // CHART
                // =========================

=======
                /// GRAFIK
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
                buildChart(),

                const SizedBox(height: 35),

<<<<<<< HEAD
                // =========================
                // HISTORY TITLE
                // =========================

                const Text(
                  "RIWAYAT TERBARU",

                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
=======
                /// RIWAYAT
                const Text(
                  "RIWAYAT TERBARU",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 16,
                    fontWeight:
                        FontWeight.w600,
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
                  ),
                ),

                const SizedBox(height: 20),

<<<<<<< HEAD
                // =========================
                // HISTORY CARD
                // =========================

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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

<<<<<<< HEAD
  // =====================================================
  // TOKEN CARD
  // =====================================================

  Widget buildTokenCard() {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(28),

=======
  Widget buildTokenCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            primaryColor,
            Colors.teal.shade300,
          ],
        ),
<<<<<<< HEAD

        borderRadius:
            BorderRadius.circular(28),
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          const Text(
            "Sisa Token",

=======
        borderRadius:
            BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            "Sisa Token",
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            "Rp 75.000",
<<<<<<< HEAD

            style: TextStyle(
              color: Colors.white,
              fontSize: 42,
              fontWeight: FontWeight.bold,
=======
            style: TextStyle(
              color: Colors.white,
              fontSize: 42,
              fontWeight:
                  FontWeight.bold,
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "48.5 kWh tersisa",
<<<<<<< HEAD

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed:
                controller.goToInputToken,
<<<<<<< HEAD

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: primaryColor,
            ),

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
            child: const Text(
              "Catat Token Baru",
            ),
          ),
        ],
      ),
    );
  }

<<<<<<< HEAD
  // =====================================================
  // STATUS CARD
  // =====================================================

  Widget buildStatusCard() {
    return Container(
      padding: const EdgeInsets.all(22),

=======
  Widget buildStatusCard() {
    return Container(
      padding:
          const EdgeInsets.all(22),
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(22),
      ),
<<<<<<< HEAD

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
              fontWeight: FontWeight.bold,
=======
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
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
            ),
          ),
        ],
      ),
    );
  }

<<<<<<< HEAD
  // =====================================================
  // TODAY CARD
  // =====================================================

  Widget buildTodayCard() {
    return Container(
      padding: const EdgeInsets.all(22),

=======
  Widget buildTodayCard() {
    return Container(
      padding:
          const EdgeInsets.all(22),
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(22),
      ),
<<<<<<< HEAD

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
              fontWeight: FontWeight.bold,
=======
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
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
            ),
          ),
        ],
      ),
    );
  }

<<<<<<< HEAD
  // =====================================================
  // CHART
  // =====================================================

  Widget buildChart() {
  return Container(
    padding: const EdgeInsets.all(22),

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // =========================
        // TITLE + ESTIMASI
        // =========================

        Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,

          children: [

            const Text(
              "Pemakaian Mingguan",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.end,

              children: [

                Text(
                  "Estimasi Hari Ini",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),

                Text(
                  "Rp 4.850",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),

        const SizedBox(height: 30),

        // =========================
        // CHART
        // =========================

        SizedBox(
          height: 220,

          child: LineChart(
            LineChartData(

              minX: 0,
              maxX: 6,

              minY: 0,
              maxY: 7,

              gridData: FlGridData(
                show: true,
                drawVerticalLine: false,
                horizontalInterval: 1,
              ),

              borderData: FlBorderData(
                show: false,
              ),

              titlesData: FlTitlesData(

                topTitles: const AxisTitles(
                  sideTitles:
                      SideTitles(showTitles: false),
                ),

                rightTitles: const AxisTitles(
                  sideTitles:
                      SideTitles(showTitles: false),
                ),

                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 28,

                    getTitlesWidget:
                        (value, meta) {

                      return Text(
                        "${value.toInt()}",
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      );
                    },
                  ),
                ),

                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 30,

                    getTitlesWidget:
                        (value, meta) {

                      const style = TextStyle(
                        fontSize: 10,
                      );

                      switch (value.toInt()) {

                        case 0:
                          return const Text(
                            "12",
                            style: style,
                          );

                        case 1:
                          return const Text(
                            "13",
                            style: style,
                          );

                        case 2:
                          return const Text(
                            "14",
                            style: style,
                          );

                        case 3:
                          return const Text(
                            "15",
                            style: style,
                          );

                        case 4:
                          return const Text(
                            "16",
                            style: style,
                          );

                        case 5:
                          return const Text(
                            "17",
                            style: style,
                          );

                        case 6:
                          return const Text(
                            "18",
                            style: style,
                          );

                        default:
                          return const Text("");
                      }
                    },
                  ),
                ),
              ),

              lineBarsData: [

                LineChartBarData(
                  spots: const [

                    FlSpot(0, 2.5),
                    FlSpot(1, 3.1),
                    FlSpot(2, 2.8),
                    FlSpot(3, 4.0),
                    FlSpot(4, 3.5),
                    FlSpot(5, 5.2),
                    FlSpot(6, 3.2),
                  ],

                  isCurved: true,

                  color: primaryColor,

                  barWidth: 4,

                  dotData: FlDotData(
                    show: true,
                  ),

                  belowBarData: BarAreaData(
                    show: true,

                    color:
                        primaryColor.withOpacity(
                      0.12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 18),

        // =========================
        // LEGEND
        // =========================

        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            Container(
              width: 12,
              height: 12,

              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
            ),

            const SizedBox(width: 8),

            const Text(
              "Pemakaian kWh per Hari",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

  // =====================================================
  // HISTORY CARD
  // =====================================================
=======
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
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489

  Widget buildHistoryCard(
    IconData icon,
    String title,
    String date,
    String value,
    Color color,
  ) {
    return Container(
<<<<<<< HEAD
      padding: const EdgeInsets.all(20),

=======
      padding:
          const EdgeInsets.all(20),
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(24),
      ),
<<<<<<< HEAD

      child: Row(
        children: [

          CircleAvatar(
            backgroundColor:
                color.withOpacity(0.1),

=======
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor:
                color.withOpacity(0.1),
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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
<<<<<<< HEAD

              children: [

                Text(title),

                const SizedBox(height: 5),

                Text(
                  date,

                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
=======
              children: [
                Text(title),
                Text(date),
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
              ],
            ),
          ),

<<<<<<< HEAD
          Text(
            value,

            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
=======
          Text(value),
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
        ],
      ),
    );
  }
}