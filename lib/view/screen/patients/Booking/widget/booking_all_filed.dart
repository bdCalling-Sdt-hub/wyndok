import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/patients/Booking/Book_appointment_controller.dart';
import 'package:wyndok/helpers/other_helper.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/view/common_widgets/pop%20up/custom_pop_up_menu_button.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';
import 'package:wyndok/view/common_widgets/text_field/custom_text_field.dart';

class BookingAllFiled extends StatelessWidget {
  const BookingAllFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookAppointmentController>(
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              controller: controller.patientsRelationController,
              validator: OtherHelper.validator,
              prefixIcon: const Icon(Icons.person),
              fieldBorderRadius: 10.r,
              keyboardType: TextInputType.none,
              suffixIcon: PopUpMenu(
                items: controller.relatives,
                selectedItem: controller.patientsRelationController.text,
                onTap: controller.selectedRelative,
              ),
            ),
            CustomText(
              text: "Patients Name".tr,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              top: 20.h,
              bottom: 12.h,
            ),
            CustomTextField(
              controller: controller.nameController,
              validator: OtherHelper.validator,
              prefixIcon: const Icon(Icons.person),
              keyboardType: TextInputType.name,
              fieldBorderRadius: 10.r,
              hindText: "Enter Name".tr,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Date of birth".tr,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      bottom: 12.h,
                    ),
                    CustomTextField(
                      controller: controller.dateOfBirthController,
                      validator: OtherHelper.validator,
                      keyboardType: TextInputType.none,
                      fieldBorderRadius: 10.r,
                      onTap: () => OtherHelper.dateOfBirthPicker(
                          controller.dateOfBirthController),
                      hindText: "Date of birth".tr,
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
                    CustomText(
                      text: "Age".tr,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      bottom: 12.h,
                    ),
                    CustomTextField(
                      controller: controller.nameController,
                      validator: OtherHelper.validator,
                      keyboardType: TextInputType.number,
                      fieldBorderRadius: 10.r,
                      hindText: "Age".tr,
                    ),
                  ],
                )),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Gender".tr,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      bottom: 12.h,
                    ),
                    CustomTextField(
                      controller: controller.genderController,
                      validator: OtherHelper.validator,
                      keyboardType: TextInputType.none,
                      fieldBorderRadius: 10.r,
                      suffixIcon: PopUpMenu(
                        items: controller.gender,
                        selectedItem: controller.genderController.text,
                        onTap: controller.selectedGender,
                      ),
                      hindText: "Gender".tr,
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
                    CustomText(
                      text: "Blood Group".tr,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      bottom: 12.h,
                    ),
                    CustomTextField(
                      controller: controller.bloodGroupController,
                      fieldBorderRadius: 10.r,
                      validator: OtherHelper.validator,
                      keyboardType: TextInputType.datetime,
                      hindText: "Blood Group".tr,
                    ),
                  ],
                )),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Height(Feet)".tr,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      bottom: 12.h,
                    ),
                    CustomTextField(
                      controller: controller.heightController,
                      validator: OtherHelper.validator,
                      keyboardType: TextInputType.number,
                      fieldBorderRadius: 10.r,
                      hindText: "Height(Feet)".tr,
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
                    CustomText(
                      text: "Weight(kg)".tr,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      bottom: 12.h,
                    ),
                    CustomTextField(
                      controller: controller.weightController,
                      validator: OtherHelper.validator,
                      keyboardType: TextInputType.number,
                      fieldBorderRadius: 10.r,
                      hindText: "Weight(kg)".tr,
                    ),
                  ],
                )),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                controller.image != null
                    ? Image.file(
                        File(controller.image!),
                        height: 60.sp,
                        width: 60.sp,
                      )
                    : const SizedBox(),
                GestureDetector(
                  onTap: controller.openImage,
                  child: Container(
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                      color: AppColors.blueLight,
                      border: Border.all(color: AppColors.blueNormal, width: 1),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.insert_chart_outlined_rounded,
                          color: AppColors.primaryColor,
                        ),
                        CustomText(text: "Upload Health Records".tr)
                      ],
                    ),
                  ),
                )
              ],
            ),
            CustomText(
              text: "Added additional details(if you want)".tr,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              top: 20.sp,
              bottom: 12.h,
            ),
            CustomTextField(
              controller: controller.descriptionController,
              fieldBorderRadius: 10.r,
              maxLines: null,
              hindText: "Write here".tr,
            )
          ],
        );
      },
    );
  }
}
