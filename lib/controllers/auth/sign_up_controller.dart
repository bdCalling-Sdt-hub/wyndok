import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  bool isPopUpOpen = false;

  List list = ["Male", "Female", "Other"];
  List selectedOption = ["Patient", "Health Professional"];

  String selectRole = "Patient";

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController genderController = TextEditingController(text: "Male");
  TextEditingController addressController = TextEditingController();

  setSelectedRole(value) {
    selectRole = value;
    update();
  }

  onSelectItem(int index) {
    genderController.text = list[index];
    update();
    isPopUpOpen = false;
    update();
    Get.back();
  }
}
