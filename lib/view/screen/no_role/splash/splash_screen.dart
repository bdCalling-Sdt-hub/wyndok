import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wyndok/core/app_routes.dart';
import 'package:wyndok/utils/app_icons.dart';
import 'package:wyndok/view/common_widgets/image/custom_image.dart';

import '../../../common_widgets/custom_loader.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.toNamed(AppRoutes.onboarding),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 45.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
                child: CustomImage(
              imageSrc: AppIcons.logo,
              height: 70.h,
            )),
            const Spacer(),
            const CustomLoader(),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
