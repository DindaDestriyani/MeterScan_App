import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: const Color(0xFF94A3B8),

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Beranda',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.speed_outlined),
            label: 'Meter',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riwayat',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),

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
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  // HEADER
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [
                      Text(
                        'MeterScan',
                        style: TextStyle(
                          fontSize:
                              isDesktop ? 34 : 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade700,
                        ),
                      ),

                      Icon(
                        Icons.notifications_none,
                        size: isDesktop ? 34 : 30,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: isDesktop ? 45 : 30,
                  ),

                  // ESTIMASI TAGIHAN
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

                  // DESKTOP GRID
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

                      // MOBILE
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

                  const SizedBox(height: 100),
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
      crossAxisAlignment: CrossAxisAlignment.start,

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
                fontSize: isDesktop ? 24 : 18,
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
      crossAxisAlignment: CrossAxisAlignment.start,

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
                fontSize: isDesktop ? 24 : 18,
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
            children: [
              SizedBox(
                height:
                    isDesktop ? 380 : 260,

                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,

                  crossAxisAlignment:
                      CrossAxisAlignment.end,

                  children: List.generate(
                    controller.hari.length,
                    (index) {
                      return Expanded(
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .end,

                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,

                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .end,

                              children: [
                                Container(
                                  width:
                                      isDesktop
                                          ? 18
                                          : 14,

                                  height:
                                      controller
                                              .kwhData[index] *
                                          (isDesktop
                                              ? 36
                                              : 28),

                                  decoration:
                                      BoxDecoration(
                                    color:
                                        greenColor,

                                    borderRadius:
                                        BorderRadius.circular(
                                      4,
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width:
                                      isDesktop
                                          ? 8
                                          : 5,
                                ),

                                Container(
                                  width:
                                      isDesktop
                                          ? 18
                                          : 14,

                                  height:
                                      controller
                                              .kwhData[index] *
                                          (isDesktop
                                              ? 32
                                              : 24),

                                  decoration:
                                      BoxDecoration(
                                    color:
                                        orangeColor,

                                    borderRadius:
                                        BorderRadius.circular(
                                      4,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 14),

                            Text(
                              controller.hari[index],

                              style: TextStyle(
                                fontSize:
                                    isDesktop
                                        ? 18
                                        : 15,

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
            ],
          ),
        ),
      ],
    );
  }
}