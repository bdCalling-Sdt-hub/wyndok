import 'package:get/get.dart';
import 'package:wyndok/view/screen/no_role/onboarding_screen/onboarding_screen.dart';

import '../view/screen/no_role/auth/forgot password/create_password.dart';
import '../view/screen/no_role/auth/forgot password/forgot_password.dart';
import '../view/screen/no_role/auth/forgot password/verify_screen.dart';
import '../view/screen/no_role/auth/sign in/sign_in_screen.dart';
import '../view/screen/no_role/auth/sign up/sign_up_screen.dart';
import '../view/screen/no_role/auth/sign up/verify_user.dart';
import '../view/screen/no_role/splash/splash_screen.dart';
import '../view/screen/patients/Booking/book_appointment.dart';
import '../view/screen/patients/Booking/my_booking_screen.dart';
import '../view/screen/patients/Booking/select_data_time.dart';
import '../view/screen/patients/categories/cotegorise_list.dart';
import '../view/screen/patients/doctor/doctor_details_screen.dart';
import '../view/screen/patients/home/patients_home.dart';
import '../view/screen/test_screen.dart';

class AppRoutes {
  static const String test = "/test_screen.dart";
  static const String splash = "/splash_screen.dart";
  static const String onboarding = "/onboarding_screen.dart";
  static const String signUp = "/sign_up_screen.dart";
  static const String signIn = "/sign_in_screen.dart";
  static const String forgotPassword = "/forgot_password.dart";
  static const String verifyEmail = "/verify_screen.dart";
  static const String createPassword = "/vcreate_password.dart";
  static const String patientsHome = "/patients_home.dart";
  static const String verifyUser = "/verify_user.dart";
  static const String cotegoriseList = "/cotegorise_list.dart";
  static const String doctorDetails = "/doctor_details_screen.dart";
  static const String bookAppointment = "/book_appointment.dart";
  static const String selectDataTime = "/select_data_time.dart";
  static const String myBooking = "/my_booking_screen.dart";

  static List<GetPage> routes = [
    GetPage(name: test, page: () => TestScreen()),
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: onboarding, page: () => OnboardingScreen()),
    GetPage(name: signUp, page: () => SignUpScreen()),
    GetPage(name: signIn, page: () => SignInScreen()),
    GetPage(name: forgotPassword, page: () => ForgotPasswordScreen()),
    GetPage(name: verifyEmail, page: () => VerifyScreen()),
    GetPage(name: createPassword, page: () => CreatePassword()),
    GetPage(name: patientsHome, page: () => PatientsHomeScreen()),
    GetPage(name: verifyUser, page: () => VerifyUser()),
    GetPage(name: cotegoriseList, page: () => CategoriseListScreen()),
    GetPage(name: doctorDetails, page: () => DoctorDetailsScreen()),
    GetPage(name: bookAppointment, page: () => BookingAppointmentScreen()),
    GetPage(name: selectDataTime, page: () => SelectDataTime()),
    GetPage(name: myBooking, page: () => MyBookingScreen()),
  ];
}
