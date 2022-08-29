import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/appointment_controller.dart';
import '../widget/appointment-w.dart';

class AppointmentView extends GetView<AppointmentController> {
  const AppointmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          //onPressed: controller.newAppointment,
          onPressed: controller.newAppointment,
          child: const Icon(Icons.add),
        ),
        body: Obx(
          () => ListView.builder(
              itemBuilder: (context, index) =>
                  AppointmentTile(controller.appointmentData[index]),
              itemCount: controller.appointmentData.length),
        ));
  }
}
