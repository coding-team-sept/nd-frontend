import 'package:get/get.dart';

import '../model/appointment_model.dart';

class AppointmentController extends GetxController {
  RxList<AppointmentModel> appointmentData = <AppointmentModel>[
    AppointmentModel(name: "Ravel Tanjaya", time: "23 August 2022"),
    AppointmentModel(name: "Xiao Ming", time: "23 August 2022"),
    AppointmentModel(name: "John Doe", time: "23 August 2022"),
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

  void newAppointment() {
    // Navigate to new appointment screen
  }
}
