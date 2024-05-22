import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/doctor/info/professional_qualifications_controller.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/view/common_widgets/button/custom_button.dart';
import 'package:wyndok/view/screen/doctor/info/widget/profeesional_qualifications_all_filed.dart';
import 'package:wyndok/view/screen/doctor/info/widget/registation_step.dart';

import '../../../common_widgets/text/custom_text.dart';

class ProfessionalQualificationsScreen extends StatelessWidget {
  ProfessionalQualificationsScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: "Professional Qualifications".tr,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: GetBuilder<ProfessionalQualificationsController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const RegistrationStep(indexNumber: 2),
                  SizedBox(
                    height: 20.h,
                  ),
                  const ProfessionalQualificationsAllFiled(),
                  CustomButton(
                    titleText: "Next".tr,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Get.toNamed(AppRoutes.addedExperience);
                      }
                    },
                  ),
                  SizedBox(height: 30.h)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
