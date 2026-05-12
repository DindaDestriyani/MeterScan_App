import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/scan_token_controller.dart';

class ScanTokenView extends GetView<ScanTokenController> {
  ScanTokenView({super.key});

  final Color primaryColor = const Color(0xFF0F766E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F5),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F5F5),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Scan Meter",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            children: [

              /// PREVIEW IMAGE
              Obx(() {
                return Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: primaryColor.withOpacity(0.2),
                    ),
                  ),

                  child: controller.imageBytes.value != null
                      ? Image.memory(
                          controller.imageBytes.value!,
                          fit: BoxFit.cover,
                        )
                      : controller.imagePath.value != ''
                          ? Image.file(
                              File(controller.imagePath.value),
                              fit: BoxFit.cover,
                            )
                          : Center(
                              child: Icon(
                                Icons.image_outlined,
                                size: 80,
                                color: Colors.grey[400],
                              ),
                            ),
                );
              }),

              const SizedBox(height: 25),

              /// GRID BUTTON (SAMPING-SAMPINGAN)
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [

                  /// SCAN
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 28,
                    child: buildButton(
                      icon: Icons.camera_alt,
                      text: "Scan Meter",
                      onTap: controller.scanMeter,
                    ),
                  ),

                  /// UPLOAD
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 28,
                    child: buildButton(
                      icon: Icons.upload_file,
                      text: "Upload",
                      onTap: controller.uploadImage,
                    ),
                  ),

                  /// SIMPAN
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 28,
                    child: buildButton(
                      icon: Icons.save,
                      text: "Simpan",
                      onTap: controller.savePhoto,
                    ),
                  ),

                  /// GRAFIK
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 28,
                    child: buildButton(
                      icon: Icons.bar_chart,
                      text: "Grafik",
                      onTap: controller.goToGraph,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// BUTTON DESIGN
  Widget buildButton({
    required String text,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 2,
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(height: 6),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}