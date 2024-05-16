import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BookAppointmentController extends GetxController {
  List relatives = const ["Father", "Mother", "Brother", "Sister"];

  TextEditingController patientsRelationController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  selectedShop(int index) {
    patientsRelationController.text = relatives[index].toString();
    update();
    Get.back();
  }
}
