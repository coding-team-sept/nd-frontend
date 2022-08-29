import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nd/app/routes/app_pages.dart';

import '../model/appointment_model.dart';

class AppointmentController extends GetxController {
  // TODO: Replace with actual data
  RxList<AppointmentModel> appointmentData = <AppointmentModel>[
    AppointmentModel(
        id: "ravel",
        name: "Ravel Tanjaya",
        time: "23 August 2022",
        isOnline: true),
    AppointmentModel(
        id: "ming", name: "Xiao Ming", time: "23 August 2022", isOnline: false),
    AppointmentModel(
        id: "doe", name: "John Doe", time: "23 August 2022", isOnline: true),
  ].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void newAppointment() => Get.toNamed(Routes.CREATE_APPOINTMENT);

  void showAppointmentDetail(String id) {
    Get.dialog(AlertDialog(
      title: const Text("Not implemented"),
      content: Text(id),
    ));
  }
}
