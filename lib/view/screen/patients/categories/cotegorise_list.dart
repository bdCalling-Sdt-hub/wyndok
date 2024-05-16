import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/patients/home_controller.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/utils/app_images.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';

import '../../../common_widgets/text_field/custom_text_field.dart';
import 'widget/doctor_list_item.dart';

class CategoriseListScreen extends StatelessWidget {
  CategoriseListScreen({super.key});

  HomeControllerPatients homeControllerPatients =
      Get.put(HomeControllerPatients());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Categories".tr,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              bottom: 20.h,
            ),
            SizedBox(
              height: 40.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeControllerPatients.categories.length,
                itemBuilder: (context, index) {
                  var item = homeControllerPatients.categories[index];
                  return GestureDetector(
                      child: Container(
                          padding: REdgeInsets.all(8.w),
                          margin: REdgeInsets.only(left: 8.w),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.greyscale),
                              borderRadius: BorderRadius.circular(8.sp)),
                          child: CustomText(
                            text: item['name'],
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                          )));
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 50.sp,
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      hindText: "Search".tr,
                      textStyle: const TextStyle(color: AppColors.blueNormal),
                      cursorColor: AppColors.blueNormal,
                      prefixIcon: const Icon(
                        Icons.search,
                        color: AppColors.blueNormal,
                      ),
                      fillColor: AppColors.transparent,
                      fieldBorderColor: AppColors.blueNormal,
                    ),
                  ),
                  Container(
                    height: 50.sp,
                    width: 50.sp,
                    margin: EdgeInsets.only(left: 8.w),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.blueNormal,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.r))),
                    child: const Icon(
                      Icons.near_me_outlined,
                      color: AppColors.blueNormal,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.doctorDetails),
                      child: DoctorListItem(
                        image: AppImages.doctor,
                        name: "Dr. Maria Waston",
                        rating: "4.8",
                        address: "Heart Surgeon, London, England",
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
