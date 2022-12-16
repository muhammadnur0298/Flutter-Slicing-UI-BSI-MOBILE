import 'package:get/get.dart';

import '../controllers/splashs_controller.dart';

class SplashsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashsController>(
      () => SplashsController(),
    );
  }
}
