import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/prabayar_controller.dart';

class PrabayarView extends StatelessWidget {
  PrabayarView({super.key});

  final PrabayarController controller =
      Get.put(PrabayarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Input Token",
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller:
                  controller
                      .idTokenController,
              decoration:
                  const InputDecoration(
                hintText: "ID Token",
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller:
                  controller
                      .nominalController,
              keyboardType:
                  TextInputType.number,
              onChanged: (value) {
                controller.hitungKwh();
              },
              decoration:
                  const InputDecoration(
                hintText:
                    "Nominal Token",
              ),
            ),

            const SizedBox(height: 20),

            Obx(
              () => DropdownButtonFormField<
                  String>(
                value:
                    controller
                        .tarifTerpilih
                        .value,
                items:
                    controller
                        .daftarTarif.keys
                        .map(
                          (tarif) =>
                              DropdownMenuItem(
                            value:
                                tarif,
                            child: Text(
                              tarif,
                            ),
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  controller
                      .tarifTerpilih
                      .value = value!;
                  controller.hitungKwh();
                },
              ),
            ),

            const SizedBox(height: 30),

            Obx(
              () => Text(
                "${controller.totalKwh.value.toStringAsFixed(2)} kWh",
                style:
                    const TextStyle(
                  fontSize: 28,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed:
                    controller
                        .simpanToken,
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