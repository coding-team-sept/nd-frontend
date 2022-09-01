import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {

  var fullName = "".obs;
  var email = "".obs;
  var password = "".obs;
  var confirmPassword ="".obs;

  var fullNameError = "".obs;
  var emailError = "".obs;
  var passwordError = "".obs;
  var confirmPasswordError = "".obs;



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

  void onNameChange(String newName) =>fullName.value = newName;


  void onPasswordChange(String newName) =>password.value = newName;


  void onConfirmPasswordChange(String newName) =>confirmPassword.value = newName;

  void onEmailChange(String newName) =>email.value = newName;


  void signUp(){

    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email.value);
    bool success = true;

    if (fullName.value.length<3){
      fullNameError.value = "Please input at least 3 characters";
      success = false;
    }
    if (password.value != confirmPassword.value){
      passwordError.value ="Please make sure password is the same";
      confirmPasswordError.value ="Please make sure password is the same";
      success = false;
    }
    if (!emailValid){
      emailError.value = "Please input a valid email";
      success = false;
    }



    if (!success ||!emailValid) {
      Get.dialog(const AlertDialog(
        title: Text("Sign Up Failed"),
        content: Text("Please check your credentials"),
      ));
    }
      if (success & emailValid) {
        Get.dialog(const AlertDialog(
          title: Text("Register Success")

        ));

    }


  }

}