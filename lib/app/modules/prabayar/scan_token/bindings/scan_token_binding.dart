import 'package:get/get.dart';
import '../controllers/scan_token_controller.dart';

class ScanTokenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanTokenController>(
      () => ScanTokenController(),
    );
  }
}