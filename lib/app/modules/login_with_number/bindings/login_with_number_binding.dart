import 'package:get/get.dart';

import '../controllers/login_with_number_controller.dart';

class LoginWithNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginWithNumberController>(
      () => LoginWithNumberController(),
    );
  }
}
