import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meterscan/app/routes/app_routes.dart';

import '../controllers/input_meter_controller.dart';

class InputMeterView extends GetView<InputMeterController> {
  const InputMeterView({super.key});

  static const Color primaryColor = Color(0xFF0B7773);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7F7),

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===== HEADER =====
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: primaryColor,
                    ),
                  ),

                  const SizedBox(width: 10),

                  const Text(
                    'Input & Hasil Scan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // ===== TITLE =====
              const Row(
                children: [
                  Icon(
                    Icons.edit_note,
                    color: primaryColor,
                  ),

                  SizedBox(width: 10),

                  Text(
                    'Data Meteran',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ===== FORM CARD =====
              Container(
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ID Meter',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 10),

                    TextField(
                      controller: controller.meterIdController,

                      decoration: InputDecoration(
                        hintText: 'Masukkan ID Meter',
                        filled: true,
                        fillColor: const Color(0xFFF4F7F7),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // ===== SWITCH =====
                    Obx(
                      () => Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,

                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.account_balance_wallet_outlined,
                                color: primaryColor,
                              ),

                              SizedBox(width: 10),

                              Text(
                                'Aktifkan Anggaran',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          Switch(
                            value:
                                controller.isBudgetActive.value,

                            activeColor: Colors.white,
                            activeTrackColor: primaryColor,

                            onChanged: (value) {
                              controller.isBudgetActive.value =
                                  value;
                            },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 15),

                    // ===== BUDGET =====
                    Obx(
                      () => TextField(
                        enabled:
                            controller.isBudgetActive.value,

                        controller:
                            controller.budgetController,

                        keyboardType:
                            TextInputType.number,

                        decoration: InputDecoration(
                          prefixText: 'IDR   ',
                          hintText: '500,000',
                          filled: true,
                          fillColor:
                              const Color(0xFFF4F7F7),

                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // ===== BUTTON CAMERA =====
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: controller.ambilFoto,

                      child: Container(
                        height: 140,

                        decoration: BoxDecoration(
                          color: const Color(0xFF4FB3B3),
                          borderRadius:
                              BorderRadius.circular(20),
                        ),

                        child: const Column(
                          mainAxisAlignment:
                              MainAxisAlignment.center,

                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              size: 40,
                              color: Color(0xFF063B3B),
                            ),

                            SizedBox(height: 15),

                            Text(
                              'Ambil Foto',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF063B3B),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: InkWell(
                      onTap: controller.unggahGambar,

                      child: Container(
                        height: 140,

                        decoration: BoxDecoration(
                          color: const Color(0xFFC4DFDF),
                          borderRadius:
                              BorderRadius.circular(20),
                        ),

                        child: const Column(
                          mainAxisAlignment:
                              MainAxisAlignment.center,

                          children: [
                            Icon(
                              Icons.upload_file_outlined,
                              size: 40,
                              color: Color(0xFF4D6767),
                            ),

                            SizedBox(height: 15),

                            Text(
                              'Unggah Gambar',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF4D6767),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // ===== BUTTON SCAN =====
              SizedBox(
                width: double.infinity,
                height: 65,

                child: ElevatedButton.icon(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(18),
                    ),
                  ),

                  icon: const Icon(
                    Icons.document_scanner_outlined,
                    color: Colors.white,
                  ),

                  label: const Text(
                    'Mulai Pindai',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Divider(color: Colors.grey.shade300),

              const SizedBox(height: 20),

              // ===== TITLE =====
              const Row(
                children: [
                  Icon(
                    Icons.fact_check_outlined,
                    color: primaryColor,
                  ),

                  SizedBox(width: 10),

                  Text(
                    'Hasil Analisis Scan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ===== IMAGE =====
              Obx(
                () => Container(
                  width: double.infinity,
                  height: 260,

                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(22),

                    image: DecorationImage(
                      image:
                          controller.getPreviewImage(),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Align(
                    alignment: Alignment.bottomLeft,

                    child: Container(
                      margin: const EdgeInsets.all(18),

                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(30),
                      ),

                      child: const Row(
                        mainAxisSize: MainAxisSize.min,

                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: primaryColor,
                            size: 18,
                          ),

                          SizedBox(width: 8),

                          Text(
                            'Kualitas Gambar Bagus',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // ===== WAKTU =====
              buildInfoCard(
                icon: Icons.access_time_outlined,
                title: 'Waktu Scan',
                value: '14 Okt 2023, 09:42\nWIB',

                trailing: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),

                  decoration: BoxDecoration(
                    color: const Color(0xFFE1F1EF),
                    borderRadius:
                        BorderRadius.circular(12),
                  ),

                  child: const Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Icon(
                        Icons.save_outlined,
                        size: 18,
                        color: primaryColor,
                      ),

                      SizedBox(width: 6),

                      Text(
                        'Simpan',
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 18),

              // ===== METER ID =====
              buildInfoCard(
                icon: Icons.badge_outlined,
                title: 'Meter ID',
                value: 'MTR-8829-XJ2',
              ),

              const SizedBox(height: 18),

              // ===== NILAI =====
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),

                  border: const Border(
                    left: BorderSide(
                      color: primaryColor,
                      width: 5,
                    ),
                  ),
                ),

                child: Row(
                  children: [
                    Container(
                      width: 54,
                      height: 54,

                      decoration: BoxDecoration(
                        color: const Color(0xFFEAF4F4),
                        borderRadius:
                            BorderRadius.circular(14),
                      ),

                      child: const Icon(
                        Icons.electric_meter_outlined,
                        color: primaryColor,
                      ),
                    ),

                    const SizedBox(width: 18),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [
                          Text(
                            'Nilai Meter (kWh)',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),

                          SizedBox(height: 6),

                          Text(
                            '1,245.82',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),

                      decoration: BoxDecoration(
                        color: const Color(0xFFEAF4F4),
                        borderRadius:
                            BorderRadius.circular(20),
                      ),

                      child: const Text(
                        'Normal',
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 35),

              // ===== BUTTON =====
              SizedBox(
                width: double.infinity,
                height: 65,

                child: ElevatedButton(
                  onPressed: () { Get.offNamed(AppRoutes.dashboardPasca);},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(18),
                    ),
                  ),

                  child: const Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,

                    children: [
                      Text(
                        'Selesai & Lihat Analisis',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),


                      ),

                      SizedBox(width: 12),

                      Icon(
                        Icons.trending_up,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
    Widget? trailing,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),

        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),

      child: Row(
        children: [
          Container(
            width: 54,
            height: 54,

            decoration: BoxDecoration(
              color: const Color(0xFFF1F4F4),
              borderRadius:
                  BorderRadius.circular(14),
            ),

            child: Icon(
              icon,
              color: Colors.blueGrey,
            ),
          ),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          if (trailing != null) trailing,
        ],
      ),
    );
  }
}