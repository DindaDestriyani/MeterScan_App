<<<<<<< HEAD
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controllers/notifikasi_controller.dart';

// class PascabayarTab
//     extends StatelessWidget {
//   const PascabayarTab({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final controller =
//         Get.find<
//           NotifikasiController
//         >();

//     final data =
//         controller
//             .pascabayarNotifikasi;

//     return ListView.builder(
//       padding:
//           const EdgeInsets.all(20),
//       itemCount: data.length,
//       itemBuilder: (
//         context,
//         index,
//       ) {
//         final item = data[index];

//         return Card(
//           child: ListTile(
//             title: Text(
//               item["judul"],
//             ),
//             subtitle: Text(
//               item["pesan"],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
=======
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/notifikasi_controller.dart';

class PascabayarTab
    extends StatelessWidget {
  const PascabayarTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller =
        Get.find<
          NotifikasiController
        >();

    final data =
        controller
            .pascabayarNotifikasi;

    return ListView.builder(
      padding:
          const EdgeInsets.all(20),
      itemCount: data.length,
      itemBuilder: (
        context,
        index,
      ) {
        final item = data[index];

        return Card(
          child: ListTile(
            title: Text(
              item["judul"],
            ),
            subtitle: Text(
              item["pesan"],
            ),
          ),
        );
      },
    );
  }
}
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
