<<<<<<< HEAD
// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../routes/app_routes.dart';

// class SplashView extends StatefulWidget {
//   const SplashView({super.key});

//   @override
//   State<SplashView> createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashView> {

//   @override
//   void initState() {
//     super.initState();

//     Timer(
//       const Duration(seconds: 3),
//       () {

//         Get.offNamed(AppRoutes.login);

//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         color: Colors.white,

//         child: Column(
//           mainAxisAlignment:
//               MainAxisAlignment.center,

//           children: [

//             const Icon(
//               Icons.bolt,
//               size: 100,
//               color: Colors.blue,
//             ),

//             const SizedBox(height: 20),

//             const Text(
//               "MeterScan",
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             const SizedBox(height: 10),

//             const Text(
//               "Pantau penggunaan listrik dengan mudah",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
=======
import 'dart:async';

>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

<<<<<<< HEAD
  static const Color primaryColor = Color(0xFF0F766E);

=======
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
  @override
  void initState() {
    super.initState();

<<<<<<< HEAD
    Timer(const Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.login);
    });
=======
    Timer(
      const Duration(seconds: 3),
      () {

        Get.offNamed(AppRoutes.login);

      },
    );
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F5),

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// ===== LOGO ICON =====
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.bolt,
                size: 60,
                color: primaryColor,
              ),
            ),

            const SizedBox(height: 25),

            /// ===== APP NAME =====
            const Text(
              "MeterScan",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: primaryColor,
                letterSpacing: 1,
=======

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,

        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            const Icon(
              Icons.bolt,
              size: 100,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            const Text(
              "MeterScan",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
              ),
            ),

            const SizedBox(height: 10),

<<<<<<< HEAD
            /// ===== SUBTITLE =====
            const Text(
              "Pantau penggunaan listrik dengan mudah",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 40),

            /// ===== LOADING INDICATOR =====
            const SizedBox(
              width: 28,
              height: 28,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                color: primaryColor,
              ),
=======
            const Text(
              "Pantau penggunaan listrik dengan mudah",
>>>>>>> ec542c32a7fc06d81a6f639478350ffe94367489
            ),
          ],
        ),
      ),
    );
  }
}