import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nd/app/modules/create_appointment/model/doctor_model.dart';

class CreateAppointmentController extends GetxController {
  RxList<DoctorModel> doctorData = <DoctorModel>[
    DoctorModel(id: "budi", name: "Budi"),
    DoctorModel(id: "john", name: "John White"),
    DoctorModel(id: "arvin", name: "Arvin Lee")
  ].obs;

  var date = DateTime.now().obs;
  var time = TimeOfDay.now().obs;

  String get formattedDate => DateFormat.yMMMMd().format(date.value);
  String get formattedTime => "${time.value.hour}:${time.value.minute}";
  void selectDate() async {
    date.value = await showDatePicker(
            context: Get.context!,
            initialDate: date.value,
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365))) ??
        date.value;
    // TODO: Trigger refresh
  }

  void selectTime() async {
    time.value =
        await showTimePicker(context: Get.context!, initialTime: time.value) ??
            time.value;
    // TODO: Trigger refresh
  }

  void doBooking(String id) {
    Get.dialog(SimpleDialog(
      title: const Text("Choose Location"),
      children: [
        SimpleDialogOption(
          child: const Text("Offline"),
          onPressed: () => doOfflineBooking(id),
        ),
        SimpleDialogOption(
          child: const Text("Online"),
          onPressed: () => doOnlineBooking(id),
        ),
      ],
    ));
  }

  void doOfflineBooking(String id) {
    Get.back();
  }

  void doOnlineBooking(String id) {
    Get.back();
  }
}
