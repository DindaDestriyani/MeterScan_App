import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/scan_token_controller.dart';

class ScanTokenView extends StatelessWidget {
  ScanTokenView({super.key});

  final ScanTokenController controller =
      Get.put(ScanTokenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "Scan Sisa Token",
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            const Text(
              "Arahkan kamera ke meteran listrik untuk membaca sisa token",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            // Camera Preview Placeholder
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius:
                    BorderRadius.circular(
                  20,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.camera_alt,
                    size: 80,
                    color: Colors.grey.shade500,
                  ),

                  Container(
                    width: 220,
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 3,
                      ),
                      borderRadius:
                          BorderRadius.circular(
                        16,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Result Scan
            Obx(
              () => controller
                      .hasilScan
                      .value
                      .isNotEmpty
                  ? Container(
                      width:
                          double.infinity,
                      padding:
                          const EdgeInsets.all(
                        16,
                      ),
                      decoration:
                          BoxDecoration(
                        color: Colors
                            .blue
                            .shade50,
                        borderRadius:
                            BorderRadius.circular(
                          16,
                        ),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "Hasil Scan",
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            controller
                                .hasilScan
                                .value,
                            style:
                                const TextStyle(
                              fontSize: 24,
                              fontWeight:
                                  FontWeight
                                      .bold,
                              color:
                                  Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(),
            ),

            const Spacer(),

            // Button Camera
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed:
                    controller.scanToken,
                icon: const Icon(
                  Icons.camera_alt,
                ),
                label: const Text(
                  "Buka Kamera",
                ),
                style:
                    ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.blue,
                  foregroundColor:
                      Colors.white,
                  shape:
                      RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(
                      12,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Upload Gallery
            SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton.icon(
                onPressed:
                    controller
                        .uploadGallery,
                icon: const Icon(
                  Icons.photo,
                ),
                label: const Text(
                  "Upload dari Galeri",
                ),
                style:
                    OutlinedButton.styleFrom(
                  shape:
                      RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(
                      12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}