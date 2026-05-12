import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/hasil_scan_controller.dart';

class HasilScanView
    extends GetView<HasilScanController> {

  const HasilScanView({super.key});

  static const Color primaryColor =
      Color(0xFF0F766E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFFF5F7F7),

      appBar: AppBar(
        backgroundColor:
            const Color(0xFFF5F7F7),

        elevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),

          onPressed: () {
            Get.back();
          },
        ),

        title: const Text(
          "MeterScan",
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),

      body: SingleChildScrollView(
        physics:
            const ClampingScrollPhysics(),

        padding:
            const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const SizedBox(height: 10),

            /// TITLE
            const Text(
              "Hasil Pemindaian",
              style: TextStyle(
                fontSize: 32,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Data berhasil diekstrak menggunakan AI presisi tinggi.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 25),

            /// IMAGE CARD
            Container(
              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius:
                    BorderRadius.circular(
                        24),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(0.05),

                    blurRadius: 10,

                    offset:
                        const Offset(0, 4),
                  ),
                ],
              ),

              child: Column(
                children: [

                  /// IMAGE
                  Stack(
                    children: [

                      ClipRRect(
                        borderRadius:
                            const BorderRadius.only(
                          topLeft:
                              Radius.circular(
                                  24),

                          topRight:
                              Radius.circular(
                                  24),
                        ),

                        child: SizedBox(
                          height: 320,
                          width:
                              double.infinity,

                          child: Obx(() {

                            final file =
                                controller
                                    .imageFile
                                    .value;

                            /// JIKA ADA FOTO
                            if (file != null) {
                              return Image.file(
                                File(file.path),
                                fit: BoxFit.cover,
                              );
                            }

                            /// DEFAULT IMAGE
                            return Image.asset(
                              'assets/images/meter.jpg',
                              fit: BoxFit.cover,
                            );
                          }),
                        ),
                      ),

                      /// VERIFIED
                      Positioned(
                        top: 16,
                        right: 16,

                        child: Container(
                          padding:
                              const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),

                          decoration:
                              BoxDecoration(
                            color:
                                primaryColor,

                            borderRadius:
                                BorderRadius.circular(
                                    30),
                          ),

                          child: const Row(
                            children: [

                              Icon(
                                Icons.verified,
                                color:
                                    Colors.white,
                                size: 18,
                              ),

                              SizedBox(width: 6),

                              Text(
                                "TERVERIFIKASI",
                                style:
                                    TextStyle(
                                  color: Colors
                                      .white,

                                  fontWeight:
                                      FontWeight
                                          .bold,

                                  letterSpacing:
                                      1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  /// FOOTER IMAGE CARD
                  Padding(
                    padding:
                        const EdgeInsets.all(
                            18),

                    child: Row(
                      children: [

                        /// WAKTU
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,

                            children: [

                              const Text(
                                "Waktu Scan",
                                style:
                                    TextStyle(
                                  color: Colors
                                      .black54,

                                  fontSize: 15,
                                ),
                              ),

                              const SizedBox(
                                  height: 6),

                              Text(
                                "${controller.currentTime} WIB",

                                style:
                                    const TextStyle(
                                  fontSize: 16,

                                  fontWeight:
                                      FontWeight
                                          .bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        /// BUTTON SAVE
                        OutlinedButton.icon(
                          onPressed: () {},

                          icon: const Icon(
                            Icons
                                .camera_alt_outlined,

                            color:
                                primaryColor,
                          ),

                          label: const Text(
                            "Simpan\nGambar",

                            style:
                                TextStyle(
                              color:
                                  primaryColor,

                              fontWeight:
                                  FontWeight
                                      .bold,
                            ),
                          ),

                          style:
                              OutlinedButton.styleFrom(
                            padding:
                                const EdgeInsets.symmetric(
                              horizontal:
                                  18,

                              vertical: 16,
                            ),

                            side:
                                const BorderSide(
                              color:
                                  Colors.grey,
                            ),

                            shape:
                                RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(
                                      18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            /// METER ID
            buildInfoCard(
              icon: Icons.fingerprint,

              title: "Meter ID",

              value:
                  controller.meterId.value,
            ),

            const SizedBox(height: 20),

            /// NILAI METER
            buildInfoCard(
              icon: Icons.speed,

              title: "Nilai Meter",

              value:
                  "${controller.meterValue.value} kWh",
            ),

            const SizedBox(height: 35),

            /// BUTTON ANALISIS
            SizedBox(
              width: double.infinity,
              height: 65,

              child:
                  ElevatedButton.icon(
                onPressed: () {

                },

                icon: const Icon(
                  Icons.insights,
                  color: Colors.white,
                ),

                label: const Text(
                  "Selesai & Lihat Analisis",

                  style: TextStyle(
                    fontSize: 20,

                    fontWeight:
                        FontWeight.bold,

                    color: Colors.white,
                  ),
                ),

                style:
                    ElevatedButton.styleFrom(
                  backgroundColor:
                      primaryColor,

                  elevation: 4,

                  shape:
                      RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(
                            20),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  /// ================= INFO CARD =================

  Widget buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      width: double.infinity,

      padding:
          const EdgeInsets.all(24),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
            BorderRadius.circular(24),

        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(
                    0.05),

            blurRadius: 10,

            offset:
                const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Row(
            children: [

              Icon(
                icon,
                color: Colors.black54,
                size: 24,
              ),

              const SizedBox(width: 10),

              Text(
                title,

                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          Text(
            value,

            style: const TextStyle(
              fontSize: 24,

              fontWeight:
                  FontWeight.bold,

              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}