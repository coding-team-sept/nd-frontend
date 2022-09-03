import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  final email = "".obs;
  final password = "".obs;

  final emailError = "".obs;
  final passwordError = "".obs;

  final showPassword = true.obs;

  void toggleShowPassword(){
    showPassword.value = !showPassword.value;
  }

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

  void onEmailChange(String newEmail) =>email.value = newEmail;

  void onPasswordChange(String newPassword) =>password.value = newPassword;


  void login(){
    bool success = true;
    emailError.value = "";
    passwordError.value = "";

    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email.value);
    if (!emailValid){
      success = false;
      emailError.value = "Please enter a valid email";
    }

    if (password.value.isEmpty){
      success = false;
      passwordError.value = "Password cannot be empty";
    }
    if (password.value.length < 8 || password.value.length > 24){
      success = false;
      passwordError.value = "Password should be 8 to 24 characters";
    }

    if (!success){
      Get.dialog(AlertDialog(
        title: Text("Sign In Failed"),
        content: Text("Please check your email and password"),
      ));
    }



  }

}
