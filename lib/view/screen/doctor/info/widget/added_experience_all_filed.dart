import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wyndok/controllers/doctor/info/Personal_information_controller.dart';
import 'package:wyndok/controllers/doctor/info/added_experience_controller.dart';
import 'package:wyndok/controllers/doctor/info/professional_qualifications_controller.dart';
import 'package:wyndok/controllers/patients/Booking/Book_appointment_controller.dart';
import 'package:wyndok/helpers/other_helper.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/view/common_widgets/pop%20up/custom_pop_up_menu_button.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';
import 'package:wyndok/view/common_widgets/text_field/custom_text_field.dart';

import '../../../../../controllers/patients/profile_controller.dart';

class AddedExperienceAllFiled extends StatelessWidget {
  const AddedExperienceAllFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddedExperienceController>(
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Hospital Name".tr,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              bottom: 12.h,
            ),
            CustomTextField(
              controller: controller.hospitalNameController,
              validator: OtherHelper.validator,
              hindText: "Hospital Name".tr,
              fieldBorderRadius: 10.r,
              keyboardType: TextInputType.text,
            ),
            CustomText(
              text: "Designation".tr,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              bottom: 12.h,
              top: 20.h,
            ),
            CustomTextField(
              controller: controller.designationController,
              validator: OtherHelper.validator,
              hindText: "Designation".tr,
              fieldBorderRadius: 10.r,
              keyboardType: TextInputType.text,
            ),
            CustomText(
              text: "Department".tr,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              bottom: 12.h,
              top: 20.h,
            ),
            CustomTextField(
              controller: controller.departmentController,
              validator: OtherHelper.validator,
              hindText: "Department".tr,
              fieldBorderRadius: 10.r,
              keyboardType: TextInputType.text,
            ),
            CustomText(
              text: "Country".tr,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              bottom: 12.h,
              top: 20.h,
            ),
            CustomTextField(
              controller: controller.countryController,
              validator: OtherHelper.validator,
              hindText: "Country".tr,
              fieldBorderRadius: 10.r,
              keyboardType: TextInputType.text,
            ),
            CustomText(
              text: "Employment Period".tr,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              bottom: 12.h,
              top: 20.h,
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: AppColors.primaryColor,
                    value: controller.isCurrentlyWorking,
                    onChanged: controller.onChange),
                CustomText(
                  text: "Currently working here".tr,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      controller: controller.startDateController,
                      validator: OtherHelper.validator,
                      keyboardType: TextInputType.none,
                      fieldBorderRadius: 10.r,
                      suffixIcon: GestureDetector(
                          onTap: () => OtherHelper.datePicker(
                              controller.startDateController),
                          child: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 32.sp,
                            color: AppColors.black,
                          )),
                      onTap: () {
                        OtherHelper.datePicker(controller.startDateController);
                      },
                      hindText: "Passing Year".tr,
                    ),
                  ],
                )),
                SizedBox(
                  width: 20.sp,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      controller: controller.endDateController,
                      validator: OtherHelper.validator,
                      keyboardType: TextInputType.none,
                      fieldBorderRadius: 10.r,
                      onTap: () =>
                          OtherHelper.datePicker(controller.endDateController),
                      suffixIcon: GestureDetector(
                        onTap: () => OtherHelper.datePicker(
                            controller.endDateController),
                        child: const Icon(Icons.date_range),
                      ),
                      hindText: "Duration".tr,
                    ),
                  ],
                )),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        );
      },
    );
  }
}
