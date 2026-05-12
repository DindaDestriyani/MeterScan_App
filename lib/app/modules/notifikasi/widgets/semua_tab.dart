<<<<<<< HEAD
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controllers/notifikasi_controller.dart';

// class SemuaTab extends StatelessWidget {
//   const SemuaTab({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final controller =
//         Get.find<
//           NotifikasiController
//         >();

//     return Obx(
//       () => ListView.builder(
//         padding:
//             const EdgeInsets.all(20),
//         itemCount:
//             controller
//                 .semuaNotifikasi
//                 .length,
//         itemBuilder:
//             (context, index) {
//           final item =
//               controller
//                       .semuaNotifikasi[
//                   index];

//           return notifCard(item);
//         },
//       ),
//     );
//   }

//   Widget notifCard(
//     Map<String, dynamic> item,
//   ) {
//     return Card(
//       margin:
//           const EdgeInsets.only(
//         bottom: 15,
//       ),
//       child: ListTile(
//         leading: const Icon(
//           Icons.notifications,
//           color: Colors.blue,
//         ),
//         title: Text(
//           item["judul"],
//         ),
//         subtitle: Text(
//           item["pesan"],
//         ),
//         trailing: Text(
//           item["waktu"],
//         ),
//       ),
//     );
//   }
// }
=======
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/notifikasi_controller.dart';

class SemuaTab extends StatelessWidget {
  const SemuaTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller =
        Get.find<
          NotifikasiController
        >();

    return Obx(
      () => ListView.builder(
        padding:
            const EdgeInsets.all(20),
        itemCount:
            controller
                .semuaNotifikasi
                .length,
        itemBuilder:
            (context, index) {
          final item =
              controller
                      .semuaNotifikasi[
                  index];

          return notifCard(item);
        },
      ),
    );
  }

  Widget notifCard(
    Map<String, dynamic> item,
  ) {
    return Card(
      margin:
          const EdgeInsets.only(
        bottom: 15,
      ),
      child: ListTile(
        leading: const Icon(
          Icons.notifications,
          color: Colors.blue,
        ),
        title: Text(
          item["judul"],
        ),
        subtitle: Text(
          item["pesan"],
        ),
        trailing: Text(
          item["waktu"],
        ),
      ),
    );
  }
}
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
