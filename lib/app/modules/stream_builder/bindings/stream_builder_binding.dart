import 'package:get/get.dart';

import '../controllers/stream_builder_controller.dart';

class StreamBuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StreamBuilderController>(
      () => StreamBuilderController(),
    );
  }
}
