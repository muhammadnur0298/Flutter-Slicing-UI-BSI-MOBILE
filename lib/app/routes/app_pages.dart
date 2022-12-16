import 'package:get/get.dart';

import 'package:bsimobile/app/modules/home/bindings/home_binding.dart';
import 'package:bsimobile/app/modules/home/views/home_view.dart';
import 'package:bsimobile/app/modules/splashs/bindings/splashs_binding.dart';
import 'package:bsimobile/app/modules/splashs/views/splashs_view.dart';
import 'package:bsimobile/app/modules/transfer/bindings/transfer_binding.dart';
import 'package:bsimobile/app/modules/transfer/views/transfer_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.SPLASHS,
      page: () => SplashsView(),
      binding: SplashsBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.TRANSFER,
      page: () => TransferView(),
      binding: TransferBinding(),
    ),
  ];
}
