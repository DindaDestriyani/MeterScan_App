import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/input_token_controller.dart';

class InputTokenView
    extends GetView<InputTokenController> {
  InputTokenView({super.key});

  final Color primaryColor =
      const Color(0xFF0F766E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFFF3F5F5),

      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            const Color(0xFFF3F5F5),
        centerTitle: true,

        title: const Text(
          "Input Token",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.all(22),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [
              const SizedBox(height: 10),

              /// NOMOR METER
              buildLabel("Nomor Meter"),

              const SizedBox(height: 10),

              buildTextField(
                controller:
                    controller.meterC,
                hint:
                    "Contoh: 123456789012",
              ),

              const SizedBox(height: 25),

              /// NOMINAL TOKEN
              buildLabel("Nominal Token"),

              const SizedBox(height: 10),

              buildTextField(
                controller:
                    controller.nominalC,
                hint: "Contoh: 100000",
                keyboardType:
                    TextInputType.number,
                onChanged: (value) {
                  controller
                      .calculateKwh();
                },
              ),

              const SizedBox(height: 25),

              /// TARIF LISTRIK
              buildLabel("Tarif Listrik"),

              const SizedBox(height: 10),

              Obx(
                () => Container(
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 18,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(
                      18,
                    ),
                  ),

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<
                        String>(
                      value:
                          controller
                              .selectedTariff
                              .value,

                      isExpanded: true,

                      items:
                          controller
                              .tariffList
                              .map(
                                (tariff) =>
                                    DropdownMenuItem(
                                  value:
                                      tariff,
                                  child:
                                      Text(
                                    tariff,
                                  ),
                                ),
                              )
                              .toList(),

                      onChanged: (value) {
                        controller
                            .selectedTariff
                            .value = value!;

                        controller
                            .calculateKwh();
                      },
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              /// HASIL KWH
              Obx(
                () => Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.all(
                    24,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(
                      24,
                    ),

                    border: Border.all(
                      color: primaryColor
                          .withOpacity(0.2),
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment
                            .start,

                    children: [
                      Text(
                        "Estimasi Total kWh",
                        style: TextStyle(
                          color:
                              Colors.grey[600],
                          fontSize: 15,
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      Text(
                        "${controller.totalKwh.value} kWh",
                        style: TextStyle(
                          color:
                              primaryColor,
                          fontSize: 34,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),

              Text(
                "* Perhitungan berdasarkan nominal ÷ tarif",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),

              const SizedBox(height: 40),

              /// BUTTON
              SizedBox(
                width: double.infinity,
                height: 60,

                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(
                    backgroundColor:
                        primaryColor,

                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(
                        18,
                      ),
                    ),
                  ),

                  onPressed:
                      controller.saveToken,

                  child: const Text(
                    "Simpan & Lanjut Scan",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight:
                          FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLabel(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget buildTextField({
    required TextEditingController
    controller,
    required String hint,
    TextInputType? keyboardType,
    Function(String)? onChanged,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(18),
      ),

      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChanged,

        decoration: InputDecoration(
          hintText: hint,

          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(
              18,
            ),
            borderSide: BorderSide.none,
          ),

          contentPadding:
              const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 18,
          ),
        ),
      ),
    );
  }
}