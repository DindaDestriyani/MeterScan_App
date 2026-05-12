import 'package:get/get.dart';

class ReminderController
    extends GetxController {
  var reminderHarian = true.obs;
  var tokenHampirHabis = true.obs;
  var estimasiHabis = true.obs;
  var overbudget = true.obs;

  var selectedTime = "19:00".obs;

  List<String> waktuList = [
    "07:00",
    "12:00",
    "19:00",
    "21:00",
  ];
}