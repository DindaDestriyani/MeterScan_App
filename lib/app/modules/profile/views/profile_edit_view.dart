import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileEditView extends GetView<ProfileController> {
  const ProfileEditView({super.key});

  static const Color primaryColor =
      Color(0xFF0F766E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFFF3F5F5),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding:
              const EdgeInsets.all(20),

          child: Container(
            width: double.infinity,
            padding:
                const EdgeInsets.all(22),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(
                      24),
            ),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                // FOTO PROFILE
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        decoration:
                            BoxDecoration(
                          shape:
                              BoxShape.circle,
                          border:
                              Border.all(
                            color:
                                Colors.white,
                            width: 4,
                          ),
                          image:
                              const DecorationImage(
                            image:
                                AssetImage(
                              'assets/images/profile.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 0,
                        right: 0,
                        child:
                            Container(
                          width: 42,
                          height: 42,
                          decoration:
                              const BoxDecoration(
                            color:
                                primaryColor,
                            shape: BoxShape
                                .circle,
                          ),
                          child:
                              const Icon(
                            Icons
                                .camera_alt_outlined,
                            color:
                                Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                    height: 30),

                // USERNAME
                const Text(
                  "USERNAME",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight:
                        FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),

                const SizedBox(
                    height: 10),

                TextField(
                  controller:
                      controller
                          .usernameC,
                  decoration:
                      InputDecoration(
                    hintText:
                        "Aditya Pratama",
                    prefixIcon:
                        const Icon(
                      Icons
                          .person_outline,
                    ),
                    filled: true,
                    fillColor:
                        const Color(
                            0xFFF3F5F5),
                    border:
                        OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(
                              16),
                    ),
                  ),
                ),

                const SizedBox(
                    height: 22),

                // EMAIL
                const Text(
                  "EMAIL ADDRESS",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight:
                        FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),

                const SizedBox(
                    height: 10),

                TextField(
                  controller:
                      controller.emailC,
                  decoration:
                      InputDecoration(
                    hintText:
                        "aditya.pratama@email.com",
                    prefixIcon:
                        const Icon(
                      Icons
                          .alternate_email,
                    ),
                    filled: true,
                    fillColor:
                        const Color(
                            0xFFF3F5F5),
                    border:
                        OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(
                              16),
                    ),
                  ),
                ),

                const SizedBox(
                    height: 22),

                // PASSWORD
                const Text(
                  "PASSWORD",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight:
                        FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),

                const SizedBox(
                    height: 10),

                Obx(
                  () => TextField(
                    key: ValueKey(
                      controller
                          .isHidden
                          .value,
                    ),
                    controller:
                        controller
                            .passwordC,
                    obscureText:
                        controller
                            .isHidden
                            .value,
                    decoration:
                        InputDecoration(
                      hintText:
                          "••••••••••",
                      prefixIcon:
                          const Icon(
                        Icons
                            .lock_outline,
                      ),
                      suffixIcon:
                          IconButton(
                        onPressed:
                            controller
                                .togglePassword,
                        icon: Icon(
                          controller
                                  .isHidden
                                  .value
                              ? Icons
                                  .visibility_outlined
                              : Icons
                                  .visibility_off_outlined,
                        ),
                      ),
                      filled: true,
                      fillColor:
                          const Color(
                              0xFFF3F5F5),
                      border:
                          OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(
                                16),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                    height: 30),

                // BUTTON SAVE
                SizedBox(
                  width:
                      double.infinity,
                  height: 54,
                  child:
                      ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(
                      backgroundColor:
                          primaryColor,
                      shape:
                          RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(
                                16),
                      ),
                    ),
                    onPressed:
                        controller
                            .saveProfile,
                    child:
                        const Text(
                      "Simpan Perubahan",
                      style:
                          TextStyle(
                        fontSize: 16,
                        color: Colors
                            .white,
                      ),
                    ),
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