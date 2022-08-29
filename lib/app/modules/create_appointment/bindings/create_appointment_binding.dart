import 'package:get/get.dart';

import '../controllers/create_appointment_controller.dart';

class CreateAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateAppointmentController>(
      () => CreateAppointmentController(),
    );
  }
}
