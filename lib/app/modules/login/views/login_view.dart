import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});

  final Color primaryColor = const Color(0xFF0F766E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F7),

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),

            child: Column(
              children: [
                // =========================
                // LOGO & TITLE
                // =========================
                const SizedBox(height: 2),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bolt, size: 22, color: primaryColor),

                    const SizedBox(width: 6),

                    Text(
                      "MeterScan",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),

                // jarak lebih jauh supaya "Selamat Datang" turun
                const SizedBox(height: 45),

                Text(
                  "Selamat Datang",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "Silahkan isi data diri anda\nuntuk masuk",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 30),

                const SizedBox(height: 40),

                // =========================
                // LOGIN CARD
                // =========================
                Container(
                  width: 380,
                  padding: const EdgeInsets.all(28),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 12,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),

                  child: Column(
                    children: [
                      // EMAIL
                      TextField(
                        controller: controller.emailC,

                        decoration: InputDecoration(
                          hintText: "Masukkan email",

                          prefixIcon: const Icon(Icons.email_outlined),

                          filled: true,
                          fillColor: const Color(0xFFF5F7F7),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // PASSWORD
                      Obx(
                        () => TextField(
                          controller: controller.passwordC,

                          obscureText: controller.isHidden.value,

                          decoration: InputDecoration(
                            hintText: "Masukkan password",

                            prefixIcon: const Icon(Icons.lock_outline),

                            suffixIcon: IconButton(
                              onPressed: controller.togglePassword,

                              icon: Icon(
                                controller.isHidden.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),

                            filled: true,
                            fillColor: const Color(0xFFF5F7F7),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),

                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 35),

                      // BUTTON LOGIN
                      SizedBox(
                        width: double.infinity,
                        height: 55,

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),

                          onPressed: controller.login,

                          child: const Text(
                            "Masuk",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          const Text("Belum punya akun?"),

                          GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.register);
                            },

                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),

                              child: Text(
                                "Daftar",
                                style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
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
