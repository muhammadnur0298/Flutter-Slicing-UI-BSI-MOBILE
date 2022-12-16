import 'package:bsimobile/app/modules/splashs/views/splashs_view.dart';
// import 'package:bsimobile/app/widgets/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
  // runApp(
  //   GetMaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: "Application",
  //     initialRoute: Routes.HOME,
  //     getPages: AppPages.routes,
  //   ),
  // );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(
          Duration(seconds: 3),
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashsView();
          } else {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Application",
              initialRoute: Routes.HOME,
              getPages: AppPages.routes,
            );
          }
        });
  }
}
