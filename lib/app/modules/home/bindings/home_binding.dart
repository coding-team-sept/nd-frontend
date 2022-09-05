import 'package:get/get.dart';
import 'package:nd/app/modules/home/controllers/appointment_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AppointmentController>(() => AppointmentController());
  }
}
