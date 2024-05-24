import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/patients/profile_controller.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/utils/app_images.dart';
import 'package:wyndok/view/common_widgets/image/custom_image.dart';
import 'package:wyndok/view/common_widgets/pop%20up/custom_pop_up_menu_button.dart';
import 'package:wyndok/view/common_widgets/item.dart';

import '../../../../utils/app_colors.dart';
import '../../../common_widgets/bottom nav bar/navbar.dart';
import '../../../common_widgets/pop up/success_pop_up.dart';
import '../../../common_widgets/text/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: "Profile".tr,
          fontWeight: FontWeight.w600,
          fontSize: 24.sp,
        ),
      ),
      body: GetBuilder<ProfileController>(
        builder: (controller) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 85.sp,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: CustomImage(
                        imageSrc: AppImages.profile,
                        imageType: ImageType.png,
                        height: 170.sp,
                        width: 170.sp,
                      ),
                    ),
                  ),
                ),
                CustomText(
                  text: "Daniel Martinez",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  top: 20.h,
                  bottom: 60.h,
                ),
                Item(
                  icon: Icons.person,
                  title: "Edit Profile".tr,
                  onTap: () => Get.toNamed(AppRoutes.editProfile),
                ),
                Item(
                  icon: Icons.notifications_none,
                  title: "Health Records".tr,
                  onTap: () => Get.toNamed(AppRoutes.healthRecords),
                ),
                Item(
                  icon: Icons.settings,
                  title: "My Booking".tr,
                  onTap: () => Get.toNamed(AppRoutes.bookingList),
                ),
                Item(
                  icon: Icons.settings,
                  title: "Settings".tr,
                  onTap: () => Get.toNamed(AppRoutes.setting),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.language),
                          CustomText(
                            text: controller.selectedLanguage,
                            color: AppColors.greyscale700,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp,
                            left: 16.w,
                          ),
                          const Spacer(),
                          PopUpMenu(
                              items: controller.languages,
                              selectedItem: controller.selectedLanguage,
                              onTap: controller.selectLanguage)
                        ],
                      ),
                      const Divider()
                    ],
                  ),
                ),
                Item(
                  icon: Icons.logout,
                  title: "Log Out".tr,
                  onTap: () => PopUp.logOutPopUp(),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: const CustomBottomNavBar(
        currentIndex: 4,
      ),
    );
  }
}
