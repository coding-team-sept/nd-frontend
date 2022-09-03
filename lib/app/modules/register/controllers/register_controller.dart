import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final fullName = "".obs;
  final email = "".obs;
  final password = "".obs;
  final confirmPassword = "".obs;

  final fullNameError = "".obs;
  final emailError = "".obs;
  final passwordError = "".obs;
  final confirmPasswordError = "".obs;

  final showPassword = true.obs;
  final showConfirmPassword = true.obs;

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }

  void toggleShowConfirmPassword() {
    showConfirmPassword.value = !showConfirmPassword.value;
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

  void onNameChange(String newName) => fullName.value = newName;

  void onPasswordChange(String newName) => password.value = newName;

  void onConfirmPasswordChange(String newName) =>
      confirmPassword.value = newName;

  void onEmailChange(String newName) => email.value = newName;

  void signUp() {
    fullNameError.value = "";
    emailError.value = "";
    passwordError.value = "";
    confirmPasswordError.value = "";

    bool success = true;

    if (fullName.value.length < 3) {
      fullNameError.value = "Please input at least 3 characters";
      success = false;
    }

    if (password.value != confirmPassword.value) {
      passwordError.value = "Please make sure password is the same";
      confirmPasswordError.value = "Please make sure password is the same";
      success = false;
    }

    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email.value);
    if (!emailValid) {
      emailError.value = "Please input a valid email";
      success = false;
    }

    if (password.isEmpty) {
      passwordError.value = "Please input a non-empty value";
      success = false;
    }

    if (confirmPassword.isEmpty) {
      confirmPasswordError.value = "Please input a non-empty value";
      success = false;
    }

    if (password.value.length < 8 || password.value.length > 24) {
      passwordError.value = "Password length must 8-24 characters";
      success = false;
    }

    if (!success) {
      Get.dialog(const AlertDialog(
        title: Text("Sign Up Failed"),
        content: Text("Please check your credentials"),
      ));
    } else {
      Get.dialog(const AlertDialog(title: Text("Register Success")));
    }
  }
}
