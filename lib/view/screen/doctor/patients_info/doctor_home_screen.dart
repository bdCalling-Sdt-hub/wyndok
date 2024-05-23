import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<DoctorHomeController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Patients List".tr,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
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
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.patientsList),
                    child: CustomText(
                      text: "See all".tr,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      top: 26.h,
                      bottom: 12.h,
                      color: AppColors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 400.h,
                  child: GridView.builder(
                    itemCount: 6,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12.sp,
                        crossAxisSpacing: 12.sp,
                        mainAxisExtent: 200.h),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Get.toNamed(AppRoutes.patientsDetails),
                        child: const PatientsListItem(
                            image: AppImages.annette,
                            name: "Annette Black",
                            time: "Fri, 12:00 PM"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 26.h,
                ),
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
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.appointmentList),
                    child: CustomText(
                      text: "See all".tr,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      top: 26.h,
                      bottom: 12.h,
                      color: AppColors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  child: ListView.builder(
                    itemCount: 10,
                    physics: NeverScrollableScrollPhysics(),
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
