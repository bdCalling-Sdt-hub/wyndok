import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wyndok/helpers/other_helper.dart';

class DoctorHomeController extends GetxController {
  List patients = [];

  TextEditingController dateController = TextEditingController();

  openDatePicker() {
    OtherHelper.datePicker(dateController);
  }
}
