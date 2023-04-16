import 'package:get/get.dart';

import '../controllers/firebase_auth_service_controller.dart';

class FirebaseAuthServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseAuthServiceController>(
      () => FirebaseAuthServiceController(),
    );
  }
}
