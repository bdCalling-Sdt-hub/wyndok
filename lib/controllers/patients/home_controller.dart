import 'package:get/get.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/utils/app_images.dart';

class HomeControllerPatients extends GetxController {
  List services = [
    {"name": "Laboratory".tr, "image": AppImages.laboratory, "screen" : AppRoutes.labBooking},
    {"name": "Ambulance".tr, "image": AppImages.ambulance, "screen" : AppRoutes.labBooking},
    {"name": "Home Care".tr, "image": AppImages.homeCare, "screen" : AppRoutes.homeCare},
  ];

  List categories = [
    {"name": "Dentistry".tr, "image": AppImages.dentistry},
    {"name": "Cardiolo".tr, "image": AppImages.cardiolo},
    {"name": "Pulmono..".tr, "image": AppImages.pulmono},
    {"name": "General..".tr, "image": AppImages.general},
    {"name": "Neurology..".tr, "image": AppImages.neurology},
    {"name": "Gastroen..".tr, "image": AppImages.gastroen},
    {"name": "Laborato".tr, "image": AppImages.laborato},
    {"name": "Vaccinat..".tr, "image": AppImages.vaccinat},
  ];
  List doctors = [
    {
      "name": "Katryn Murphy".tr,
      "image": AppImages.katryn,
      "categories": "Cardiologist",
      "rating": 4.7
    },
    {
      "name": "Katryn Murphy".tr,
      "image": AppImages.katryn,
      "categories": "Cardiologist",
      "rating": 4.7
    },
    {
      "name": "Katryn Murphy".tr,
      "image": AppImages.katryn,
      "categories": "Cardiologist",
      "rating": 4.7
    },
    {
      "name": "Katryn Murphy".tr,
      "image": AppImages.katryn,
      "categories": "Cardiologist",
      "rating": 4.7
    },
    {
      "name": "Katryn Murphy".tr,
      "image": AppImages.katryn,
      "categories": "Cardiologist",
      "rating": 4.7
    },
    {
      "name": "Katryn Murphy".tr,
      "image": AppImages.katryn,
      "categories": "Cardiologist",
      "rating": 4.7
    },



  ];
}
