import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meterscan/app/routes/app_routes.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  DashboardView({super.key});

  final Color greenColor = const Color(0xFF0F766E);
  final Color orangeColor = const Color(0xFFA65A2B);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final bool isDesktop = width > 900;

    return Scaffold(
      backgroundColor: const Color(0xFFF3F6F6),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: isDesktop ? 950 : double.infinity,

              padding: EdgeInsets.symmetric(
                horizontal: isDesktop ? 40 : 20,
                vertical: 20,
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  // ================= HEADER =================

                  Row(
                    children: [

                      IconButton(
                        onPressed: () {
                          Get.offAllNamed('/home');
                        },

                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                      ),

                      const SizedBox(width: 5),

                      Text(
                        'Dashboard Pascabayar',

                        style: TextStyle(
                          fontSize:
                              isDesktop ? 30 : 22,

                          fontWeight:
                              FontWeight.bold,

                          color: greenColor,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: isDesktop ? 45 : 30,
                  ),

                  // ================= ESTIMASI =================

                  Container(
                    width: double.infinity,

                    padding: EdgeInsets.all(
                      isDesktop ? 32 : 22,
                    ),

                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius:
                          BorderRadius.circular(26),

                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                    ),

                    child: Stack(
                      children: [

                        Positioned(
                          right: 10,
                          top: -40,

                          child: Text(
                            '4',

                            style: TextStyle(
                              fontSize:
                                  isDesktop ? 170 : 120,

                              fontWeight:
                                  FontWeight.bold,

                              color:
                                  Colors.grey.shade200,
                            ),
                          ),
                        ),

                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            Text(
                              'Estimasi Tagihan Bulan Depan',

                              style: TextStyle(
                                fontSize:
                                    isDesktop ? 22 : 18,
                              ),
                            ),

                            SizedBox(
                              height:
                                  isDesktop ? 34 : 26,
                            ),

                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,

                              children: [

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,

                                    children: [

                                      Obx(
                                        () => Text(
                                          'Rp ${controller.estimasiTagihan.value}',

                                          style:
                                              TextStyle(
                                            fontSize:
                                                isDesktop
                                                    ? 38
                                                    : 26,

                                            fontWeight:
                                                FontWeight.bold,

                                            color:
                                                greenColor,
                                          ),
                                        ),
                                      ),

                                      const SizedBox(
                                        height: 12,
                                      ),

                                      Obx(
                                        () => Text(
                                          '↗ ${controller.persenPerubahan.value.abs()}% dibanding bulan lalu',

                                          style:
                                              TextStyle(
                                            fontSize:
                                                isDesktop
                                                    ? 18
                                                    : 15,

                                            color:
                                                orangeColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  padding:
                                      EdgeInsets.symmetric(
                                    horizontal:
                                        isDesktop
                                            ? 26
                                            : 18,

                                    vertical:
                                        isDesktop
                                            ? 22
                                            : 16,
                                  ),

                                  decoration:
                                      BoxDecoration(
                                    color: greenColor
                                        .withOpacity(
                                      0.08,
                                    ),

                                    borderRadius:
                                        BorderRadius.circular(
                                      18,
                                    ),
                                  ),

                                  child: Column(
                                    children: [

                                      Text(
                                        'Masa Pakai',

                                        style:
                                            TextStyle(
                                          fontSize:
                                              isDesktop
                                                  ? 18
                                                  : 14,
                                        ),
                                      ),

                                      const SizedBox(
                                        height: 6,
                                      ),

                                      Text(
                                        '21 Hari',

                                        style:
                                            TextStyle(
                                          fontSize:
                                              isDesktop
                                                  ? 24
                                                  : 18,

                                          fontWeight:
                                              FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: isDesktop ? 40 : 30,
                  ),

                  SizedBox(
                    width: double.infinity,
                    height: 55,

                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: greenColor,

                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(18),
                        ),
                      ),

                      onPressed: () {

                        Get.toNamed(
                          AppRoutes.inputMeter,
                        );

                      },

                      icon: const Icon(
                        Icons.add_home_work_outlined,
                        color: Colors.white,
                      ),

                      label: const Text(
                        "Input Data Meter",

                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  // ================= GRID =================

                  isDesktop
                      ? Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            Expanded(
                              child:
                                  buildBudgetCard(
                                isDesktop,
                              ),
                            ),

                            const SizedBox(width: 24),

                            Expanded(
                              child:
                                  buildChartCard(
                                isDesktop,
                              ),
                            ),
                          ],
                        )

                      : Column(
                          children: [

                            buildBudgetCard(
                              isDesktop,
                            ),

                            const SizedBox(height: 24),

                            buildChartCard(
                              isDesktop,
                            ),
                          ],
                        ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ================= BUDGET =================

  Widget buildBudgetCard(bool isDesktop) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Row(
          children: [

            Icon(
              Icons.account_balance_wallet_outlined,
              color: greenColor,
              size: isDesktop ? 32 : 26,
            ),

            const SizedBox(width: 10),

            Text(
              'Budgeting',

              style: TextStyle(
                fontSize:
                    isDesktop ? 24 : 18,
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        Container(
          width: double.infinity,

          padding: EdgeInsets.all(
            isDesktop ? 28 : 22,
          ),

          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius:
                BorderRadius.circular(26),

            border: Border.all(
              color: Colors.grey.shade300,
            ),
          ),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: [

                  Text(
                    'Anggaran Terpakai',

                    style: TextStyle(
                      fontSize:
                          isDesktop ? 22 : 18,

                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  Text(
                    'Target: Rp 200.000',

                    style: TextStyle(
                      fontSize:
                          isDesktop ? 18 : 15,

                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 26),

              Obx(
                () => ClipRRect(
                  borderRadius:
                      BorderRadius.circular(
                    20,
                  ),

                  child:
                      LinearProgressIndicator(
                    value: controller
                        .progressPenggunaan
                        .value,

                    minHeight:
                        isDesktop ? 18 : 14,

                    backgroundColor:
                        Colors.grey.shade300,

                    valueColor:
                        AlwaysStoppedAnimation(
                      orangeColor,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 28),

              Container(
                padding: EdgeInsets.all(
                  isDesktop ? 22 : 18,
                ),

                decoration: BoxDecoration(
                  color:
                      const Color(0xFFFFF7F2),

                  borderRadius:
                      BorderRadius.circular(
                    18,
                  ),

                  border: Border.all(
                    color:
                        const Color(0xFFE7CFC1),
                  ),
                ),

                child: Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    Icon(
                      Icons.warning_amber_rounded,
                      color: orangeColor,
                    ),

                    const SizedBox(width: 14),

                    Expanded(
                      child: Text(
                        'Hati-hati! Penggunaan Anda sudah mencapai 82% dari target bulanan.',

                        style: TextStyle(
                          fontSize:
                              isDesktop ? 17 : 15,

                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ================= CHART =================

  Widget buildChartCard(bool isDesktop) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Row(
          children: [

            Icon(
              Icons.bar_chart,
              color: greenColor,
              size: isDesktop ? 32 : 26,
            ),

            const SizedBox(width: 10),

            Text(
              'Penggunaan Harian',

              style: TextStyle(
                fontSize:
                    isDesktop ? 24 : 18,

                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        Container(
          width: double.infinity,

          padding: EdgeInsets.all(
            isDesktop ? 28 : 22,
          ),

          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius:
                BorderRadius.circular(26),

            border: Border.all(
              color: Colors.grey.shade300,
            ),
          ),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              // ================= ESTIMASI =================

              Container(
                width: double.infinity,

                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color:
                      greenColor.withOpacity(0.08),

                  borderRadius:
                      BorderRadius.circular(18),
                ),

                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: [

                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [

                        Text(
                          "Estimasi Hari Ini",

                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 13,
                          ),
                        ),

                        const SizedBox(height: 6),

                        Text(
                          "Rp 8.450",

                          style: TextStyle(
                            fontSize:
                                isDesktop ? 24 : 20,

                            fontWeight:
                                FontWeight.bold,

                            color: greenColor,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.end,

                      children: [

                        Text(
                          "Pemakaian",

                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 13,
                          ),
                        ),

                        const SizedBox(height: 6),

                        Text(
                          "5.4 kWh",

                          style: TextStyle(
                            fontSize:
                                isDesktop ? 24 : 20,

                            fontWeight:
                                FontWeight.bold,

                            color: orangeColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // ================= GRAFIK =================

              SizedBox(
                height:
                    isDesktop ? 320 : 230,

                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,

                  crossAxisAlignment:
                      CrossAxisAlignment.end,

                  children: List.generate(
                    controller.hari.length,

                    (index) {

                      final double value =
                          controller.kwhData[index];

                      return Expanded(
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.end,

                          children: [

                            Text(
                              "${value.toStringAsFixed(1)}",

                              style: TextStyle(
                                fontSize:
                                    isDesktop
                                        ? 14
                                        : 11,

                                fontWeight:
                                    FontWeight.w600,

                                color:
                                    greenColor,
                              ),
                            ),

                            const SizedBox(height: 8),

                            Container(
                              width:
                                  isDesktop
                                      ? 26
                                      : 18,

                              height:
                                  value *
                                      (isDesktop
                                          ? 34
                                          : 24),

                              decoration:
                                  BoxDecoration(
                                color:
                                    greenColor,

                                borderRadius:
                                    BorderRadius.circular(
                                  6,
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),

                            Text(
                              controller.hari[index],

                              style: TextStyle(
                                fontSize:
                                    isDesktop
                                        ? 15
                                        : 12,

                                color:
                                    const Color(
                                  0xFF94A3B8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // ================= KETERANGAN =================

              Wrap(
                alignment:
                    WrapAlignment.center,

                spacing: 20,
                runSpacing: 10,

                children: [

                  Row(
                    mainAxisSize:
                        MainAxisSize.min,

                    children: [

                      Container(
                        width: 14,
                        height: 14,

                        decoration: BoxDecoration(
                          color: greenColor,

                          borderRadius:
                              BorderRadius.circular(
                            4,
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),

                      Text(
                        "Pengeluaran kWh Harian",

                        style: TextStyle(
                          fontSize:
                              isDesktop
                                  ? 15
                                  : 13,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisSize:
                        MainAxisSize.min,

                    children: [

                      Container(
                        width: 14,
                        height: 14,

                        decoration: BoxDecoration(
                          color: orangeColor,

                          borderRadius:
                              BorderRadius.circular(
                            4,
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),

                      Text(
                        "Estimasi Pengeluaran Hari Ini",

                        style: TextStyle(
                          fontSize:
                              isDesktop
                                  ? 15
                                  : 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
