import 'package:get/get.dart';

import '../controllers/input_meter_controller.dart';

class InputMeterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InputMeterController>(
      () => InputMeterController(),
    );
  }
}