import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/controllers/patients/home_controller.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/utils/app_icons.dart';
import 'package:wyndok/utils/app_images.dart';
import 'package:wyndok/view/common_widgets/image/custom_image.dart';
import 'package:wyndok/view/common_widgets/text/custom_text.dart';
import 'package:wyndok/view/common_widgets/text_field/custom_text_field.dart';

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
                            const Expanded(
                              child: CustomTextField(
                                prefixIcon: Icon(
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

              ],
            ),
          );
        },
      ),
    );
  }
}
