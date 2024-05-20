import 'package:get/get.dart';

import '../controllers/auth/sign_up_controller.dart';
import '../controllers/patients/Booking/Book_appointment_controller.dart';
import '../controllers/patients/Booking/ambulance_booking_controller.dart';
import '../controllers/patients/Booking/home_care_controller.dart';
import '../controllers/patients/health_rocords_controller.dart';
import '../controllers/patients/home_controller.dart';
import '../controllers/patients/Booking/lab_booking_controller.dart';
import '../controllers/patients/message_controller.dart';
import '../controllers/patients/Booking/my_booking_controller.dart';
import '../controllers/patients/notifications_controller.dart';
import '../controllers/patients/profile_controller.dart';
import '../controllers/patients/send_review_controller.dart';
import '../controllers/patients/setting_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => HomeControllerPatients(), fenix: true);
    Get.lazyPut(() => BookAppointmentController(), fenix: true);
    Get.lazyPut(() => MyBookingController(), fenix: true);
    Get.lazyPut(() => MessageController(), fenix: true);
    Get.lazyPut(() => SendReviewController(), fenix: true);
    Get.lazyPut(() => LabBookingController(), fenix: true);
    Get.lazyPut(() => HomeCareController(), fenix: true);
    Get.lazyPut(() => AmbulanceBookingController(), fenix: true);
    Get.lazyPut(() => NotificationsController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => HealthRecordController(), fenix: true);
    Get.lazyPut(() => SettingController(), fenix: true);
  }
}
