import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/doctor/info/Personal_information_controller.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/view/common_widgets/button/custom_button.dart';
import 'package:wyndok/view/screen/doctor/info/widget/personal_Info_all_Filed.dart';
import 'package:wyndok/view/screen/doctor/info/widget/registation_step.dart';

import '../../../common_widgets/text/custom_text.dart';

class PersonalInformationScreen extends StatelessWidget {
  PersonalInformationScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: "Personal Information".tr,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: GetBuilder<PersonalInformationController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const RegistrationStep(indexNumber: 1),
                  const PersonalInfoAllFiled(),
                  CustomButton(
                    titleText: "Continue".tr,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Get.toNamed(AppRoutes.professionalQualifications);
                      }
                    },
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
