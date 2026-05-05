import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/pascabayar_controller.dart';

class PascabayarView
    extends StatelessWidget {
  PascabayarView({
    super.key,
  });

  final PascabayarController controller =
      Get.put(
    PascabayarController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "Input Budget",
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            const Text(
              "ID Pelanggan",
              style: TextStyle(
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller:
                  controller
                      .idPelangganController,
              decoration:
                  InputDecoration(
                hintText:
                    "Masukkan ID pelanggan",
                border:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(
                    14,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Tarif Listrik",
              style: TextStyle(
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Obx(
              () => DropdownButtonFormField<
                  String>(
                value:
                    controller
                        .selectedTarif
                        .value,
                items: const [
                  DropdownMenuItem(
                    value:
                        "R1 / 1300 VA",
                    child: Text(
                      "R1 / 1300 VA",
                    ),
                  ),
                  DropdownMenuItem(
                    value:
                        "R1 / 2200 VA",
                    child: Text(
                      "R1 / 2200 VA",
                    ),
                  ),
                ],
                onChanged: (value) {
                  controller
                      .selectedTarif
                      .value = value!;
                },
                decoration:
                    InputDecoration(
                  border:
                      OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(
                      14,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Budget Bulanan",
              style: TextStyle(
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller:
                  controller
                      .budgetController,
              keyboardType:
                  TextInputType.number,
              onChanged:
                  controller
                      .updateBudget,
              decoration:
                  InputDecoration(
                hintText:
                    "Masukkan budget",
                border:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(
                    14,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.all(
                20,
              ),
              decoration:
                  BoxDecoration(
                color: Colors.blue,
                borderRadius:
                    BorderRadius.circular(
                  20,
                ),
              ),
              child: Obx(
                () => Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start,
                  children: [
                    const Text(
                      "Budget Anda",
                      style: TextStyle(
                        color:
                            Colors.white70,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Rp ${controller.budgetBulanan.value}",
                      style:
                          const TextStyle(
                        color:
                            Colors.white,
                        fontSize: 28,
                        fontWeight:
                            FontWeight
                                .bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed:
                    controller
                        .simpanDanScan,
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
                      14,
                    ),
                  ),
                ),
                child: const Text(
                  "Simpan & Lanjut Scan",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}