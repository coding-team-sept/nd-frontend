import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {

  var fullName = "".obs;
  var password = "".obs;
  var confirmPassword ="".obs;

  var fullNameError = "".obs;
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

  void signUp(){
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
    if (!success){
      Get.dialog(const AlertDialog(
        title: Text("Sign Up Failed"),
        content: Text("Please check your credentials"),
      ));
    }


  }

}