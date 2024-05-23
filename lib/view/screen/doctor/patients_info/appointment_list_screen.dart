import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/doctor/patients_info/appointment_list_controller.dart';
import 'package:wyndok/controllers/doctor/patients_info/doctor_home_controller.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/helpers/other_helper.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/utils/app_images.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';
import 'package:wyndok/view/common_widgets/text_field/custom_text_field.dart';
import 'package:wyndok/view/screen/doctor/patients_info/patients_list_screen.dart';
import 'package:wyndok/view/screen/doctor/patients_info/widget/patients_list_item.dart';

import '../../../common_widgets/bottom nav bar/doctor_nav_bar.dart';
import 'widget/appointment_request_item.dart';

class AppointmentListScreen extends StatelessWidget {
  const AppointmentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<AppointmentListController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: CustomText(
                        text: "Appointment Request".tr,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      width: 170.w,
                      child: CustomTextField(
                        controller: controller.dateController,
                        onTap: controller.openDatePicker,
                        fillColor: AppColors.blueLight,
                        horizontal: 6.w,
                        vertical: 2.h,
                        keyboardType: TextInputType.none,
                        fieldBorderRadius: 5.r,
                        hindText: "Select Date".tr,
                        suffixIcon: GestureDetector(
                            onTap: controller.openDatePicker,
                            child: Icon(
                              Icons.date_range,
                              color: AppColors.blue,
                              size: 24.sp,
                            )),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  child: ListView.builder(
                    itemCount: 10,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const AppointmentRequestItem(
                        time: "Today, 11:30 AM",
                        text: "Appointment with Mr. Black",
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: const CustomDoctorBottomNavBar(
        currentIndex: 0,
      ),
    );
  }
}
