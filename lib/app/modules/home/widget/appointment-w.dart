import 'package:flutter/material.dart';
import 'package:nd/app/modules/home/model/appointment_model.dart';

class AppointmentTile extends StatelessWidget {
  final AppointmentModel data;
  const AppointmentTile(this.data, {key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data.name),
      subtitle: Text(data.time),
    );
  }
}
