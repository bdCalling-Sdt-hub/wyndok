import 'package:get/get.dart';

class ProfileController extends GetxController {
  List languages = ["English", "French", "Arabic"];
  String selectedLanguage = "English";

  selectLanguage(int index) {
    selectedLanguage = languages[index];
    update();
    Get.back();
  }
}
