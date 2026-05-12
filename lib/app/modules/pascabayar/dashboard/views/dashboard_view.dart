import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:meterscan/app/routes/app_routes.dart';

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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

<<<<<<< HEAD
=======
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

>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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
<<<<<<< HEAD
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
=======
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
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
                      ),
                    ],
                  ),

                  SizedBox(
                    height: isDesktop ? 45 : 30,
                  ),

<<<<<<< HEAD
                  // ================= ESTIMASI =================

=======
                  // ESTIMASI TAGIHAN
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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
<<<<<<< HEAD

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
                        Positioned(
                          right: 10,
                          top: -40,

                          child: Text(
                            '4',
<<<<<<< HEAD

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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
<<<<<<< HEAD

                            Text(
                              'Estimasi Tagihan Bulan Depan',

=======
                            Text(
                              'Estimasi Tagihan Bulan Depan',
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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
<<<<<<< HEAD

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,

                                    children: [
<<<<<<< HEAD

                                      Obx(
                                        () => Text(
                                          'Rp ${controller.estimasiTagihan.value}',

=======
                                      Obx(
                                        () => Text(
                                          'Rp ${controller.estimasiTagihan.value}',
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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
<<<<<<< HEAD

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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

<<<<<<< HEAD
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

=======
                  // DESKTOP GRID
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
                  isDesktop
                      ? Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [
<<<<<<< HEAD

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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

<<<<<<< HEAD
                      : Column(
                          children: [

=======
                      // MOBILE
                      : Column(
                          children: [
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
                            buildBudgetCard(
                              isDesktop,
                            ),

                            const SizedBox(height: 24),

                            buildChartCard(
                              isDesktop,
                            ),
                          ],
                        ),

<<<<<<< HEAD
                  const SizedBox(height: 40),
=======
                  const SizedBox(height: 100),
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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
<<<<<<< HEAD
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Row(
          children: [

=======
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          children: [
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
            Icon(
              Icons.account_balance_wallet_outlined,
              color: greenColor,
              size: isDesktop ? 32 : 26,
            ),

            const SizedBox(width: 10),

            Text(
              'Budgeting',
<<<<<<< HEAD

              style: TextStyle(
                fontSize:
                    isDesktop ? 24 : 18,
=======
              style: TextStyle(
                fontSize: isDesktop ? 24 : 18,
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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
<<<<<<< HEAD

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: [
<<<<<<< HEAD

                  Text(
                    'Anggaran Terpakai',

=======
                  Text(
                    'Anggaran Terpakai',
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
                    style: TextStyle(
                      fontSize:
                          isDesktop ? 22 : 18,

                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  Text(
                    'Target: Rp 200.000',
<<<<<<< HEAD

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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
<<<<<<< HEAD

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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
<<<<<<< HEAD
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Row(
          children: [

=======
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          children: [
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
            Icon(
              Icons.bar_chart,
              color: greenColor,
              size: isDesktop ? 32 : 26,
            ),

            const SizedBox(width: 10),

            Text(
              'Penggunaan Harian',
<<<<<<< HEAD

              style: TextStyle(
                fontSize:
                    isDesktop ? 24 : 18,

                fontWeight: FontWeight.w600,
=======
              style: TextStyle(
                fontSize: isDesktop ? 24 : 18,
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
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
<<<<<<< HEAD
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
=======
            children: [
              SizedBox(
                height:
                    isDesktop ? 380 : 260,
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489

                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,

                  crossAxisAlignment:
                      CrossAxisAlignment.end,

                  children: List.generate(
                    controller.hari.length,
<<<<<<< HEAD

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
=======
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
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489

                            Text(
                              controller.hari[index],

                              style: TextStyle(
                                fontSize:
                                    isDesktop
<<<<<<< HEAD
                                        ? 15
                                        : 12,
=======
                                        ? 18
                                        : 15,
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489

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
<<<<<<< HEAD

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
=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
            ],
          ),
        ),
      ],
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
