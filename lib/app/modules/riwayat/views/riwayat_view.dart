import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RiwayatView extends StatelessWidget {
  RiwayatView({super.key});

  final RxString selectedFilter = "Semua".obs;

  final List<String> filters = [
    "Semua",
    "Prabayar",
    "Pascabayar",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riwayat"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),

          // 🔵 FILTER BUTTON
          Obx(() {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: filters.map((item) {
                  final isSelected = selectedFilter.value == item;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: ChoiceChip(
                      label: Text(item),
                      selected: isSelected,
                      onSelected: (val) {
                        selectedFilter.value = item;
                      },
                      selectedColor: Colors.blue,
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          }),

          const SizedBox(height: 20),

          // 🔵 CONTENT RIWAYAT
          Expanded(
            child: Obx(() {
              return Center(
                child: Text(
                  "Filter dipilih: ${selectedFilter.value}",
                  style: const TextStyle(fontSize: 16),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}