import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/patients/home_controller.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/utils/app_icons.dart';
import 'package:wyndok/view/common_widgets/image/custom_image.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';
import 'package:wyndok/view/common_widgets/text_field/custom_text_field.dart';

import '../../../common_widgets/bottom nav bar/navbar.dart';

class PatientsHomeScreen extends StatelessWidget {
  const PatientsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeControllerPatients>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 270.h,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      CustomImage(
                        imageSrc: AppIcons.logo,
                        height: 29.h,
                        imageColor: AppColors.white,
                      ),
                      CustomText(
                        text: "Let’s find Health Service".tr,
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w800,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        color: AppColors.white,
                      ),
                      SizedBox(
                        height: 50.sp,
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                hindText: "Ping Your Location".tr,
                                textStyle:
                                    const TextStyle(color: AppColors.greyscale),
                                cursorColor: AppColors.greyscale,
                                prefixIcon: const Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.white,
                                ),
                                fillColor: AppColors.transparent,
                              ),
                            ),
                            Container(
                              height: 50.sp,
                              width: 50.sp,
                              margin: EdgeInsets.only(left: 8.w),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.r))),
                              child: const Icon(
                                Icons.near_me_outlined,
                                color: AppColors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Wyndok Services".tr,
                        fontSize: 20.sp,
                        top: 12.h,
                        bottom: 20.h,
                      ),
                      SizedBox(
                          height: 110.sp,
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.services.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3, crossAxisSpacing: 38.sp),
                            itemBuilder: (context, index) {
                              var item = controller.services[index];
                              return GestureDetector(
                                onTap: () => Get.toNamed(item["screen"]),
                                child: Container(
                                  height: 90.sp,
                                  width: 90.sp,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.blueLightActive,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImage(
                                        imageSrc: item["image"],
                                        imageType: ImageType.png,
                                        height: 52.sp,
                                      ),
                                      CustomText(text: item["name"])
                                    ],
                                  ),
                                ),
                              );
                            },
                          )),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Categories".tr,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(AppRoutes.cotegoriseList),
                            child: CustomText(
                              text: "See All".tr,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                          height: 200.sp,
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.categories.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 20.sp,
                                    mainAxisExtent: 100.sp),
                            itemBuilder: (context, index) {
                              var item = controller.categories[index];
                              return Container(
                                height: 62.sp,
                                width: 62.sp,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImage(
                                      imageSrc: item["image"],
                                      imageType: ImageType.png,
                                      height: 62.sp,
                                    ),
                                    CustomText(text: item["name"])
                                  ],
                                ),
                              );
                            },
                          )),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Top Doctors".tr,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                          ),
                          CustomText(
                            text: "See All".tr,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                          child: ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.doctors.length,
                        itemBuilder: (context, index) {
                          var item = controller.doctors[index];
                          return Container(
                            margin: EdgeInsets.only(bottom: 12.h),
                            padding: EdgeInsets.all(16.sp),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.blueNormal),
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Row(
                              children: [
                                CustomImage(
                                  imageSrc: item["image"],
                                  imageType: ImageType.png,
                                  height: 62.sp,
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Flexible(
                                            child: CustomText(
                                              text: item["name"],
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20.sp,
                                            ),
                                          ),
                                          const Spacer(),
                                          CustomText(
                                              text: item["rating"].toString()),
                                          const Icon(Icons.star)
                                        ],
                                      ),
                                      CustomText(
                                        text: item["categories"],
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.sp,
                                        color: AppColors.blueNormal,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      )),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: const CustomBottomNavBar(
        currentIndex: 0,
      ),
    );
  }
}
