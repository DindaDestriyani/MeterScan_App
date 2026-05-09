import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/register_controller.dart';
import '../../../routes/app_routes.dart';

class RegisterView extends GetView<RegisterController> {
  RegisterView({super.key});

  final Color primaryColor = const Color(0xFF0F766E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F7),

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),

            child: Column(
              children: [
                // =========================
                // LOGO & TITLE
                // =========================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(Icons.bolt, size: 24, color: primaryColor),

                    const SizedBox(width: 6),

                    Text(
                      "MeterScan",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                Text(
                  "Monitoring dan Prediksi\nPenggunaan Listrik",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 35),

                // =========================
                // REGISTER CARD
                // =========================
                Container(
                  width: 380,
                  padding: const EdgeInsets.all(24),

                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(24),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),

                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,

                        child: Text(
                          "Daftar Akun",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ),

                      const SizedBox(height: 6),

                      Align(
                        alignment: Alignment.centerLeft,

                        child: Text(
                          "Buat akun untuk mulai menggunakan MeterScan",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),

                      const SizedBox(height: 28),

                      // =========================
                      // USERNAME
                      // =========================
                      TextField(
                        controller: controller.usernameC,

                        decoration: InputDecoration(
                          hintText: "Username",

                          prefixIcon: const Icon(
                            Icons.person_outline,
                            size: 20,
                          ),

                          filled: true,
                          fillColor: const Color(0xFFF5F7F7),

                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18,
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),

                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // =========================
                      // EMAIL
                      // =========================
                      TextField(
                        controller: controller.emailC,

                        decoration: InputDecoration(
                          hintText: "Email",

                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            size: 20,
                          ),

                          filled: true,
                          fillColor: const Color(0xFFF5F7F7),

                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 18,
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),

                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // =========================
                      // PASSWORD
                      // =========================
                      Obx(
                        () => TextField(
                          controller: controller.passwordC,

                          obscureText: controller.isHidden.value,

                          decoration: InputDecoration(
                            hintText: "Password",

                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              size: 20,
                            ),

                            suffixIcon: IconButton(
                              onPressed: controller.togglePassword,

                              icon: Icon(
                                controller.isHidden.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 20,
                              ),
                            ),

                            filled: true,
                            fillColor: const Color(0xFFF5F7F7),

                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 18,
                            ),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),

                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // =========================
                      // CONFIRM PASSWORD
                      // =========================
                      Obx(
                        () => TextField(
                          controller: controller.confirmPasswordC,

                          obscureText: controller.isHidden.value,

                          decoration: InputDecoration(
                            hintText: "Konfirmasi Password",

                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              size: 20,
                            ),

                            suffixIcon: IconButton(
                              onPressed: controller.togglePassword,

                              icon: Icon(
                                controller.isHidden.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 20,
                              ),
                            ),

                            filled: true,
                            fillColor: const Color(0xFFF5F7F7),

                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 18,
                            ),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),

                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // =========================
                      // BUTTON REGISTER
                      // =========================
                      SizedBox(
                        width: double.infinity,
                        height: 54,

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,

                            elevation: 0,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),

                          onPressed: controller.register,

                          child: const Text(
                            "Daftar",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      // =========================
                      // LOGIN
                      // =========================
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          const Text(
                            "Sudah punya akun?",
                            style: TextStyle(fontSize: 13),
                          ),

                          GestureDetector(
                            onTap: () {
                              Get.offNamed(AppRoutes.login);
                            },

                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),

                              child: Text(
                                "Masuk",
                                style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
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
        ),
      ),
    );
  }
}
