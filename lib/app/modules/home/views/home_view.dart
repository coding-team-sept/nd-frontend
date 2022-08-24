import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nd/app/modules/dashboard/views/dashboard_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
		length: 3,
		child: Scaffold(
		appBar: AppBar(
		title: const Text('Ravel Tanjaya'),
		bottom: const TabBar(
			tabs: [
				Tab(icon: Icon(Icons.home),text: "Dashboard",),
				Tab(icon: Icon(Icons.timer),text: "Appointment",),
				Tab(icon: Icon(Icons.account_circle),text: "Profile",),
			]
		),
        ),
	  body: const TabBarView(children: 
		 [
		 	DashboardView(),
			// TODO: replace with actual page
		 	Text("Appointment"),
			// TODO: replace with actual page
		 	Text("profile"),
		 ]
	  ),
      ),
    );
  }
}
