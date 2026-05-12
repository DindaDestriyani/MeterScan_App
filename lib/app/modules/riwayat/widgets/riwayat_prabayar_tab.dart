<<<<<<< HEAD
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controllers/riwayat_controller.dart';

// class RiwayatPrabayarTab
//     extends StatelessWidget {
//   RiwayatPrabayarTab({
//     super.key,
//   });

//   final RiwayatController controller =
//       Get.put(
//     RiwayatController(),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => ListView.builder(
//         itemCount:
//             controller
//                 .riwayatPrabayar
//                 .length,
//         itemBuilder: (
//           context,
//           index,
//         ) {
//           final item =
//               controller
//                   .riwayatPrabayar[index];

//           return ListTile(
//             title: Text(
//               item["tanggal"]
//                   .toString(),
//             ),
//             subtitle: Text(
//               "Rp ${item["nominal"]}",
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
=======
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/riwayat_controller.dart';

class RiwayatPrabayarTab
    extends StatelessWidget {
  RiwayatPrabayarTab({
    super.key,
  });

  final RiwayatController controller =
      Get.put(
    RiwayatController(),
  );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount:
            controller
                .riwayatPrabayar
                .length,
        itemBuilder: (
          context,
          index,
        ) {
          final item =
              controller
                  .riwayatPrabayar[index];

          return ListTile(
            title: Text(
              item["tanggal"]
                  .toString(),
            ),
            subtitle: Text(
              "Rp ${item["nominal"]}",
            ),
          );
        },
      ),
    );
  }
}
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
