import 'dart:io';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HasilScanController extends GetxController {

  /// IMAGE
  Rx<File?> imageFile = Rx<File?>(null);

  /// DATA HASIL SCAN
  var meterId = "MS-99201-XPB".obs;

  var meterValue = "1,284.50".obs;

  /// WAKTU SCAN
  String get currentTime {
    return DateFormat(
      'dd MMM yyyy, HH:mm',
      'id_ID',
    ).format(DateTime.now());
  }
}