import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  bool isOpen = false;

  List list = ["Male", "Female", "Other"];

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  onChangeItem(bool value) {
    isOpen = value;
    update();
  }

  onSelectItem(int index) {
    genderController.text = list[index];
    update();
  }
}
