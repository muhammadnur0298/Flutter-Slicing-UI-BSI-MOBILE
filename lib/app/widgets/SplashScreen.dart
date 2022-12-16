// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: SingleChildScrollView(
//             child: Container(
//               child: Center(
//                 child: Wrap(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Image.asset(
//                           "assets/images/splasho.png",
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     Container(
//                       padding:
//                           EdgeInsets.symmetric(vertical: 50, horizontal: 20),
//                       child: Center(
//                         child: Image.asset(
//                           "assets/images/logo.png",
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Container(
//                       child: Padding(
//                         padding: const EdgeInsets.only(right: 20, top: 90),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Image.asset(
//                               "assets/images/splashh.png",
//                             ),
//                             Row(
//                               children: [
//                                 Image.asset(
//                                   "assets/images/diawal2.png",
//                                 ),
//                                 SizedBox(width: 10),
//                                 Image.asset(
//                                   "assets/images/diawal1.png",
//                                 ),
//                                 SizedBox(width: 10),
//                                 Image.asset(
//                                   "assets/images/diawal.png",
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
