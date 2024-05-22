import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../controllers/doctor/info/added_experience_controller.dart';
import '../../../../core/app_routes.dart';
import '../../../common_widgets/button/custom_button.dart';
import '../../../common_widgets/text/custom_text.dart';
import 'widget/added_experience_all_filed.dart';
import 'widget/registation_step.dart';

class AddedExperienceScreen extends StatelessWidget {
  AddedExperienceScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: "Added Experience".tr,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: GetBuilder<AddedExperienceController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const RegistrationStep(indexNumber: 3),
                  SizedBox(
                    height: 20.h,
                  ),
                  const AddedExperienceAllFiled(),
                  CustomButton(
                    titleText: "Next".tr,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Get.toNamed(AppRoutes.availability);
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
