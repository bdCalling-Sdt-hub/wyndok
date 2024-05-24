import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/doctor/info/availability_controller.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/view/common_widgets/button/custom_button.dart';

import '../../../common_widgets/bottom nav bar/doctor_nav_bar.dart';
import '../../../common_widgets/text/custom_text.dart';
import 'widget/hour_item.dart';
import 'widget/registation_step.dart';
import 'widget/week_item.dart';

class AvailabilityScreen extends StatelessWidget {
  AvailabilityScreen({super.key});

  String type = Get.parameters["type"] ?? "";

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
      body: GetBuilder<AvailabilityController>(
        builder: (controller) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                type == "back"
                    ? const SizedBox()
                    : const Center(child: RegistrationStep(indexNumber: 4)),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  text: "Please select the days".tr,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  bottom: 18.h,
                ),
                SizedBox(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.week.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 50.h,
                        crossAxisSpacing: 18.sp,
                        mainAxisSpacing: 18.sp),
                    itemBuilder: (context, index) {
                      var item = controller.week[index];
                      return GestureDetector(
                        onTap: () => controller.selectWeek(index),
                        child: WeekItem(
                          title: item,
                          isSelected:
                              controller.selectedWeekList.contains(item),
                        ),
                      );
                    },
                  ),
                ),
                CustomText(
                  text: "Select Hour".tr,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  bottom: 16.h,
                  top: 25.h,
                ),
                SizedBox(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.hours.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 50.h,
                        crossAxisSpacing: 18.sp,
                        mainAxisSpacing: 18.sp),
                    itemBuilder: (context, index) {
                      var item = controller.hours[index];
                      return GestureDetector(
                        onTap: () => controller.selectHour(index),
                        child: HourItem(
                          title: item,
                          isSelected:
                              controller.selectedHourList.contains(item),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomButton(
                  titleText: type == "back" ? "Save Changes".tr : "Next".tr,
                  onTap: () {
                    if (type == "back") {
                      Get.back();
                    } else {
                      Get.toNamed(AppRoutes.identificationScreen);
                    }
                  },
                )
              ],
            ),
          );
        },
      ),

      bottomNavigationBar: type == "back"
          ? const CustomDoctorBottomNavBar(currentIndex: 3)
          : const SizedBox(),
    );
  }
}
