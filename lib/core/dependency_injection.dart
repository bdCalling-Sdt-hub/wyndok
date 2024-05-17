import 'package:get/get.dart';

import '../controllers/auth/sign_up_controller.dart';
import '../controllers/patients/Book_appointment_controller.dart';
import '../controllers/patients/home_controller.dart';
import '../controllers/patients/my_booking_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => HomeControllerPatients(), fenix: true);
    Get.lazyPut(() => BookAppointmentController(), fenix: true);
    Get.lazyPut(() => MyBookingController(), fenix: true);
  }
}
