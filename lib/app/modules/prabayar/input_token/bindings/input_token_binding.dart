import 'package:get/get.dart';
import '../controllers/input_token_controller.dart';

class InputTokenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InputTokenController>(
      () => InputTokenController(),
    );
  }
}