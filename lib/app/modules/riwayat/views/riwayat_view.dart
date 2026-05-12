import 'package:flutter/material.dart';
import 'package:get/get.dart';

<<<<<<< HEAD
import '../../../routes/app_routes.dart';
import '../controllers/riwayat_controller.dart';

class RiwayatView extends GetView<RiwayatController> {
  RiwayatView({super.key});

  final Color primaryColor = const Color(0xFF0F766E);
=======
class RiwayatView extends StatelessWidget {
  RiwayatView({super.key});

  final RxString selectedFilter = "Semua".obs;

  final List<String> filters = [
    "Semua",
    "Prabayar",
    "Pascabayar",
  ];
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      backgroundColor: const Color(0xFFF3F5F5),

      // =========================
      // BOTTOM NAVIGATION
      // =========================

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                // =========================
                // HEADER
                // =========================

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: [

                    Text(
                      "MeterScan",

                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),

                    // const Icon(
                    //   Icons.notifications_none,
                    //   size: 28,
                    // ),
                  ],
                ),

                const SizedBox(height: 25),

                // =========================
                // SWITCH TAB
                // =========================

                Obx(
                  () => Container(
                    padding: const EdgeInsets.all(5),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(18),
                    ),

                    child: Row(
                      children: [

                        // =========================
                        // PASCABAYAR
                        // =========================

                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              controller.changeTab(false);
                            },

                            child: AnimatedContainer(
                              duration:
                                  const Duration(
                                      milliseconds: 200),

                              padding:
                                  const EdgeInsets.symmetric(
                                vertical: 14,
                              ),

                              decoration: BoxDecoration(
                                color: !controller
                                        .isPrabayar.value
                                    ? primaryColor
                                    : Colors.transparent,

                                borderRadius:
                                    BorderRadius.circular(
                                        14),
                              ),

                              child: Center(
                                child: Text(
                                  "Pascabayar",

                                  style: TextStyle(
                                    fontWeight:
                                        FontWeight.w600,

                                    color: !controller
                                            .isPrabayar.value
                                        ? Colors.white
                                        : Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // =========================
                        // PRABAYAR
                        // =========================

                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              controller.changeTab(true);
                            },

                            child: AnimatedContainer(
                              duration:
                                  const Duration(
                                      milliseconds: 200),

                              padding:
                                  const EdgeInsets.symmetric(
                                vertical: 14,
                              ),

                              decoration: BoxDecoration(
                                color: controller
                                        .isPrabayar.value
                                    ? primaryColor
                                    : Colors.transparent,

                                borderRadius:
                                    BorderRadius.circular(
                                        14),
                              ),

                              child: Center(
                                child: Text(
                                  "Prabayar",

                                  style: TextStyle(
                                    fontWeight:
                                        FontWeight.w600,

                                    color: controller
                                            .isPrabayar.value
                                        ? Colors.white
                                        : Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // =========================
                // CONTENT
                // =========================

                Obx(
                  () => controller.isPrabayar.value
                      ? buildPrabayarContent()
                      : buildPascabayarContent(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // =========================================================
  // ===================== PRABAYAR ==========================
  // =========================================================

  Widget buildPrabayarContent() {
    return Column(
      children: [

        // =========================
        // CARD SALDO
        // =========================

        Container(
          width: double.infinity,

          padding: const EdgeInsets.all(22),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              const Text(
                "Sisa Saldo/Pulsa",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 12),

              Row(
                children: [

                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [

                          TextSpan(
                            text: "Rp 124.500",

                            style: TextStyle(
                              fontSize: 28,
                              fontWeight:
                                  FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),

                          const TextSpan(
                            text: " / 82.4 kWh",

                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Icon(
                    Icons.wallet,
                    size: 55,
                    color: Colors.grey[300],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: const Color(0xFFE8F1F1),
                  borderRadius:
                      BorderRadius.circular(18),
                ),

                child: Row(
                  children: [

                    Icon(
                      Icons.access_time,
                      color: primaryColor,
                    ),

                    const SizedBox(width: 12),

                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [

                        Text(
                          "ESTIMASI PEMAKAIAN",

                          style: TextStyle(
                            color: primaryColor,
                            fontWeight:
                                FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 4),

                        const Text(
                          "Sisa 12 Hari kedepan",

                          style: TextStyle(
                            fontSize: 16,
                            fontWeight:
                                FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 25),

        // =========================
        // GRAFIK
        // =========================

        buildChartCard(),

        const SizedBox(height: 30),

        // =========================
        // TITLE
        // =========================

        Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,

          children: [

            const Text(
              "Riwayat Aktivitas",

              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Lihat Semua",

              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        const SizedBox(height: 18),

        buildActivityCard(
          icon: Icons.receipt_long,
          title: "Pengisian Token Listrik",
          subtitle: "Token: 1243-5642-XXXX",
          date: "Hari ini, 09:45",
          value: "+Rp 100.000",
          tag: "MANUAL",
          tagColor: Colors.orange,
        ),

        const SizedBox(height: 16),

        buildActivityCard(
          icon: Icons.qr_code_scanner,
          title: "Pencatatan Hasil Scan",
          subtitle: "Angka Meter: 12.452,5 kWh",
          date: "Kemarin, 18:20",
          value: "Tercatat",
          tag: "SCAN",
          tagColor: primaryColor,
        ),

        const SizedBox(height: 16),

        buildActivityCard(
          icon: Icons.history,
          title: "Penggunaan Harian",
          subtitle: "Konsumsi estimasi 4.2 kWh",
          date: "27 Mei 2024",
          value: "-Rp 6.350",
          valueColor: Colors.red,
          tag: "AUTO",
          tagColor: Colors.grey,
        ),
      ],
    );
  }

  // =========================================================
  // ==================== PASCABAYAR =========================
  // =========================================================

  Widget buildPascabayarContent() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,

          children: [

            const Text(
              "Filter Riwayat",

              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Januari 2026",

              style: TextStyle(
                color: primaryColor,
                fontSize: 16,
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        Row(
          children: [

            buildFilterButton(
              "Semua",
              true,
            ),

            const SizedBox(width: 12),

            buildFilterButton(
              "7 Hari",
              false,
            ),

            const SizedBox(width: 12),

            buildFilterButton(
              "30 Hari",
              false,
            ),

            const SizedBox(width: 12),

            buildFilterButton(
              "Kustom",
              false,
            ),
          ],
        ),

        const SizedBox(height: 25),

        Container(
          width: double.infinity,

          padding: const EdgeInsets.all(22),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),

          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

            children: [

              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  const Text(
                    "Estimasi Tagihan",
                    style: TextStyle(fontSize: 18),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Rp 482.500",

                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),

              CircleAvatar(
                radius: 28,
                backgroundColor:
                    const Color(0xFFE8F1F1),

                child: Icon(
                  Icons.wallet,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 18),

        Row(
          children: [

            Expanded(
              child: buildMiniCard(
                "Penggunaan",
                "245.8",
                "m³",
                Icons.timelapse,
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: buildMiniCard(
                "Sisa Budget",
                "18%",
                "tersisa",
                Icons.local_fire_department,
              ),
            ),
          ],
        ),

        const SizedBox(height: 25),

        buildChartCard(),

        const SizedBox(height: 25),

        const Text(
          "LOG PEMINDAIAN & SIKLUS",

          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),

        const SizedBox(height: 20),

        buildLogCard(
          "24",
          "JAN",
          "ID: MTR-8829",
          "08:45 WIB",
          "1,245.30 m³",
          "+ 7.4 m³ (Harian)",
        ),

        const SizedBox(height: 15),

        buildLogCard(
          "23",
          "JAN",
          "ID: MTR-8829",
          "08:30 WIB",
          "1,237.90 m³",
          "+ 8.1 m³ (Harian)",
        ),

        const SizedBox(height: 15),

        buildLogCard(
          "20",
          "JAN",
          "Billing Cycle",
          "Tagihan Terbit",
          "Rp 512.400",
          "Lunas",
        ),

        const SizedBox(height: 30),

        Center(
          child: Text(
            "Lihat Semua Riwayat",

            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  // =========================================================
  // WIDGET
  // =========================================================

  Widget buildChartCard() {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

            children: [

              const Text(
                "Tren Pengisian",

                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                padding:
                    const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),

                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius:
                      BorderRadius.circular(10),
                ),

                child: const Text("Bulan Ini"),
              ),
            ],
          ),

          const SizedBox(height: 30),

          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

            crossAxisAlignment:
                CrossAxisAlignment.end,

            children: [

              buildBar("01/05", 80, primaryColor),
              buildBar("08/05", 50, primaryColor),
              buildBar("15/05", 110, Colors.orange),
              buildBar("22/05", 70, primaryColor),
              buildBar("29/05", 90, primaryColor),
            ],
          ),

          const SizedBox(height: 25),

          Row(
            mainAxisAlignment:
                MainAxisAlignment.center,

            children: [

              buildLegend(
                primaryColor,
                "Penggunaan Normal",
              ),

              const SizedBox(width: 20),

              buildLegend(
                Colors.orange,
                "Pengisian Token",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildFilterButton(
    String text,
    bool active,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 14,
      ),

      decoration: BoxDecoration(
        color:
            active ? primaryColor : Colors.white,

        borderRadius:
            BorderRadius.circular(30),

        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),

      child: Text(
        text,

        style: TextStyle(
          color:
              active ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget buildMiniCard(
    String title,
    String value,
    String sub,
    IconData icon,
  ) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Icon(
            icon,
            color: primaryColor,
          ),

          const SizedBox(height: 10),

          Text(title),

          const SizedBox(height: 10),

          Row(
            crossAxisAlignment:
                CrossAxisAlignment.end,

            children: [

              Text(
                value,

                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(width: 4),

              Text(sub),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLogCard(
    String date,
    String month,
    String title,
    String subtitle,
    String value,
    String status,
  ) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [

          Container(
            width: 55,
            height: 55,

            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius:
                  BorderRadius.circular(14),
            ),

            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center,

              children: [

                Text(
                  date,

                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(month),
              ],
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  title,

                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 5),

                Text(subtitle),
              ],
            ),
          ),

          Column(
            crossAxisAlignment:
                CrossAxisAlignment.end,

            children: [

              Text(
                value,

                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                status,
                style: const TextStyle(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildBar(
    String date,
    double height,
    Color color,
  ) {
    return Column(
      children: [

        Container(
          width: 48,
          height: height,

          decoration: BoxDecoration(
            color: color,
            borderRadius:
                BorderRadius.circular(4),
          ),
        ),

        const SizedBox(height: 10),

        Text(date),
      ],
    );
  }

  Widget buildLegend(
    Color color,
    String text,
  ) {
    return Row(
      children: [

        CircleAvatar(
          radius: 5,
          backgroundColor: color,
        ),

        const SizedBox(width: 8),

        Text(text),
      ],
    );
  }

  Widget buildActivityCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required String date,
    required String value,
    required String tag,
    required Color tagColor,
    Color valueColor = Colors.black,
  }) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),

      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Container(
            width: 60,
            height: 60,

            decoration: BoxDecoration(
              color:
                  tagColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),

            child: Icon(
              icon,
              color: tagColor,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,

                  children: [

                    Expanded(
                      child: Text(
                        title,

                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight:
                              FontWeight.w500,
                        ),
                      ),
                    ),

                    Container(
                      padding:
                          const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),

                      decoration: BoxDecoration(
                        color:
                            tagColor.withOpacity(
                                0.1),

                        borderRadius:
                            BorderRadius.circular(
                                20),
                      ),

                      child: Text(
                        tag,

                        style: TextStyle(
                          color: tagColor,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Text(
                  subtitle,

                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,

                  children: [

                    Text(
                      date,

                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),

                    Text(
                      value,

                      style: TextStyle(
                        fontSize: 16,
                        fontWeight:
                            FontWeight.bold,
                        color: valueColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
=======
      appBar: AppBar(
        title: const Text("Riwayat"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),

          // 🔵 FILTER BUTTON
          Obx(() {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: filters.map((item) {
                  final isSelected = selectedFilter.value == item;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: ChoiceChip(
                      label: Text(item),
                      selected: isSelected,
                      onSelected: (val) {
                        selectedFilter.value = item;
                      },
                      selectedColor: Colors.blue,
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          }),

          const SizedBox(height: 20),

          // 🔵 CONTENT RIWAYAT
          Expanded(
            child: Obx(() {
              return Center(
                child: Text(
                  "Filter dipilih: ${selectedFilter.value}",
                  style: const TextStyle(fontSize: 16),
                ),
              );
            }),
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
          ),
        ],
      ),
    );
  }
}