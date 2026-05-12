import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import '../controllers/grafik_biaya_prabayar_controller.dart';

class GrafikBiayaPrabayarView
    extends StatelessWidget {
  GrafikBiayaPrabayarView({
    super.key,
  });

  final GrafikBiayaPrabayarController controller =
      Get.put(
    GrafikBiayaPrabayarController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey.shade50,

      appBar: AppBar(
        title: const Text(
          "Grafik Biaya Prabayar",
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const Text(
              "Analisis Pengeluaran Listrik",
              style: TextStyle(
                fontSize: 20,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // FILTER
            Obx(
              () =>
                  DropdownButtonFormField<
                    String
                  >(
                    value:
                        controller
                            .selectedFilter
                            .value,
                    items: const [
                      DropdownMenuItem(
                        value:
                            "Mingguan",
                        child: Text(
                          "Mingguan",
                        ),
                      ),
                      DropdownMenuItem(
                        value:
                            "Bulanan",
                        child: Text(
                          "Bulanan",
                        ),
                      ),
                    ],
                    onChanged: (
                      value,
                    ) {
                      controller
                          .changeFilter(
                        value!,
                      );
                    },
                  ),
            ),

            const SizedBox(height: 30),

            // CHART
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.all(
                  20,
                ),
                decoration:
                    BoxDecoration(
                  color:
                      Colors.white,
                  borderRadius:
                      BorderRadius.circular(
                    20,
                  ),
                ),
                child: Obx(
                  () => BarChart(
                    BarChartData(
                      barGroups:
                          List.generate(
                        controller
                            .currentData
                            .length,
                        (index) =>
                            BarChartGroupData(
                          x: index,
                          barRods: [
                            BarChartRodData(
                              toY:
                                  controller
                                      .currentData[index],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // TOTAL BIAYA
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.all(
                20,
              ),
              decoration: BoxDecoration(
                color:
                    Colors.blue.shade50,
                borderRadius:
                    BorderRadius.circular(
                  16,
                ),
              ),
              child: Obx(
                () => Text(
                  "Total Pengeluaran: Rp ${controller.currentData.reduce((a, b) => a + b).toStringAsFixed(0)}",
                  style:
                      const TextStyle(
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
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
