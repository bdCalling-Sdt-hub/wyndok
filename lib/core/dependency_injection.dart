


import 'package:get/get.dart';

import '../controllers/auth/sign_up_controller.dart';



class DependencyInjection extends Bindings {



  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController(), fenix: true);


  }
}
