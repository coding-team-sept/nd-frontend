import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 80, bottom: 24, left: 32, right: 32),
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(24) //change the shape of container
          ),
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                Text("Welcome", style: Get.theme.textTheme.displaySmall),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Hello there, login to continue!",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Email:",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                const TextField(
                  decoration: InputDecoration(
                      filled: true, //fill the background colour
                      hintText: "johndoe@example.com"),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Password:",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                const TextField(
                  decoration: InputDecoration(
                      filled: true, //fill the background colour
                      hintText: "********"),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Login"),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                onPressed: () {},
                child: const Text("Sign up"),
              )
            ],
          )
        ],
      ),
    ));
  }
}
