import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/reminder_controller.dart';

class ReminderView
    extends StatelessWidget {
  ReminderView({
    super.key,
  });

  final ReminderController controller =
      Get.put(
    ReminderController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey.shade50,

      appBar: AppBar(
        title: const Text(
          "Pengaturan Reminder",
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [
            // CARD REMINDER HARIAN
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.all(
                20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(
                  20,
                ),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                          children: [
                            Text(
                              "Reminder Scan Harian",
                              style: TextStyle(
                                fontWeight:
                                    FontWeight
                                        .bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Ingatkan saya untuk scan meter setiap hari",
                              style: TextStyle(
                                color:
                                    Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Obx(
                        () => Switch(
                          value: controller
                              .reminderHarian
                              .value,
                          onChanged: (
                            value,
                          ) {
                            controller
                                .reminderHarian
                                .value = value;
                          },
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  const Text(
                    "Waktu Reminder",
                    style: TextStyle(
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Obx(
                    () => Container(
                      padding:
                          const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      decoration:
                          BoxDecoration(
                        border: Border.all(
                          color:
                              Colors.grey
                                  .shade300,
                        ),
                        borderRadius:
                            BorderRadius.circular(
                          12,
                        ),
                      ),
                      child:
                          DropdownButtonHideUnderline(
                        child:
                            DropdownButton<
                              String
                            >(
                          value:
                              controller
                                  .selectedTime
                                  .value,
                          isExpanded:
                              true,
                          items:
                              controller
                                  .waktuList
                                  .map(
                                    (
                                      item,
                                    ) => DropdownMenuItem(
                                      value:
                                          item,
                                      child:
                                          Text(
                                        item,
                                      ),
                                    ),
                                  )
                                  .toList(),
                          onChanged:
                              (
                                value,
                              ) {
                                controller
                                        .selectedTime
                                        .value =
                                    value!;
                              },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // CARD NOTIFIKASI
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.all(
                20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(
                  20,
                ),
              ),
              child: Column(
                children: [
                  notificationItem(
                    title:
                        "Token Hampir Habis",
                    subtitle:
                        "Jika sisa token < 10 kWh",
                    value:
                        controller
                            .tokenHampirHabis,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  notificationItem(
                    title:
                        "Estimasi Habis",
                    subtitle:
                        "Jika token akan habis dalam 3 hari",
                    value:
                        controller
                            .estimasiHabis,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  notificationItem(
                    title: "Overbudget",
                    subtitle:
                        "Jika prediksi tagihan melebihi budget",
                    value:
                        controller
                            .overbudget,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget notificationItem({
    required String title,
    required String subtitle,
    required RxBool value,
  }) {
    return Row(
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
              Text(
                title,
                style:
                    const TextStyle(
                  fontWeight:
                      FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                style:
                    const TextStyle(
                  color:
                      Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => Switch(
            value: value.value,
            onChanged: (
              val,
            ) {
              value.value = val;
            },
          ),
        ),
      ],
    );
  }
}