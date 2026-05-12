import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  static const Color primaryColor = Color(0xFF0F766E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F5),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
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
              children: [

                const Text(
                  "MeterScan",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),

                const SizedBox(height: 30),

                // ===== FOTO PROFILE =====
                Stack(
                  children: [
                    Obx(() {
                      return Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 4),
                          image: DecorationImage(
                            image: controller.imagePath.value.isEmpty
                                ? const AssetImage('assets/images/profile.jpg')
                                    as ImageProvider
                                : FileImage(File(controller.imagePath.value)),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),

                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () => Get.toNamed(AppRoutes.editProfile),
                        child: Container(
                          width: 42,
                          height: 42,
                          decoration: const BoxDecoration(
                            color: primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Obx(() => Text(
                      controller.username.value,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    )),

                const SizedBox(height: 8),

                Obx(() => Text(
                      controller.email.value,
                      style: const TextStyle(color: Colors.grey),
                    )),

                const SizedBox(height: 30),

                // ===== MENU =====
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person_outline),
                        title: const Text("Edit Profile"),
                        onTap: () => Get.toNamed(AppRoutes.editProfile),
                      ),

                      const Divider(),

                      ListTile(
                        leading: const Icon(Icons.logout, color: Colors.red),
                        title: const Text(
                          "Logout",
                          style: TextStyle(color: Colors.red),
                        ),
                        onTap: () => Get.offAllNamed(AppRoutes.login),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}