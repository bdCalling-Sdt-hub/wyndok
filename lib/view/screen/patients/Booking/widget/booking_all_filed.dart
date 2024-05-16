import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/patients/Book_appointment_controller.dart';
import 'package:wyndok/helpers/other_helper.dart';
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
              keyboardType: TextInputType.none,
              suffixIcon: PopUpMenu(
                items: controller.relatives,
                selectedItem: controller.patientsRelationController.text,
                onTap: controller.selectedShop,
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
                    ),
                    CustomTextField(
                      controller: controller.dateOfBirthController,
                      validator: OtherHelper.validator,
                      keyboardType: TextInputType.none,
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
                    ),
                    CustomTextField(
                      controller: controller.nameController,
                      validator: OtherHelper.validator,
                      keyboardType: TextInputType.number,
                      hindText: "Age".tr,
                    ),
                  ],
                )),
              ],
            )
          ],
        );
      },
    );
  }
}
