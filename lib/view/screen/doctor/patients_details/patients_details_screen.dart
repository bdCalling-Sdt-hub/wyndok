import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/doctor/patients_details/patients_details_controller.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/utils/app_images.dart';
import 'package:wyndok/view/common_widgets/bottom%20nav%20bar/doctor_nav_bar.dart';
import 'package:wyndok/view/common_widgets/button/custom_button.dart';
import 'package:wyndok/view/common_widgets/image/custom_image.dart';
import 'package:wyndok/view/screen/doctor/patients_details/widget/cancel_popup.dart';

import '../../../common_widgets/text/custom_text.dart';
import 'widget/patients_details_all_field.dart';

class PatientsDetailsScreen extends StatelessWidget {
  const PatientsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: "Patients Details".tr,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: GetBuilder<PatientsDetailsController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 28.h),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.sp,
                      child: ClipOval(
                        child: CustomImage(
                          imageSrc: AppImages.doctorSarah,
                          height: 60.sp,
                          imageType: ImageType.png,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Farvez Abdullah",
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp,
                        ),
                        CustomText(
                          text: "Rampura, Dhaka, Bangladessh",
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                        ),
                      ],
                    ))
                  ],
                ),
                const PatientsDetailsAllFiled(),
                Row(
                  children: [
                    Expanded(
                        child: CustomButton(
                      titleText: "Cancel".tr,
                      borderColor: AppColors.blueLightActive,
                      buttonColor: AppColors.transparent,
                      titleColor: AppColors.blue,
                      onTap: () => CancelPopup.popUp(),
                    )),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(child: CustomButton(titleText: "Accept".tr))
                  ],
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: const CustomDoctorBottomNavBar(currentIndex: 9),
    );
  }
}
