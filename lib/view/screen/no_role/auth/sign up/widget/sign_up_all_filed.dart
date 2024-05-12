import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wyndok/controllers/auth/sign_up_controller.dart';

import '../../../../../../utils/app_colors.dart';
import '../../../../../common_widgets/text/custom_text.dart';
import '../../../../../common_widgets/text_field/custom_text_field.dart';

class SignUpAllField extends StatefulWidget {
  const SignUpAllField({super.key});

  @override
  State<SignUpAllField> createState() => _SignUpAllFieldState();
}

class _SignUpAllFieldState extends State<SignUpAllField> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) {
        return Column(
          children: [
            CustomTextField(
              prefixIcon: const Icon(Icons.group),
              labelText: "Full Name".tr,
              controller: controller.nameController,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField(
              controller: controller.emailController,
              prefixIcon: const Icon(Icons.mail),
              labelText: "Email".tr,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField(
              controller: controller.passwordController,
              prefixIcon: const Icon(Icons.mail),
              labelText: "Password".tr,
            ),
            SizedBox(
              height: 20.h,
            ),
            IntlPhoneField(
              controller: controller.numberController,
              // validator: (value) {
              //   if (value!.number.isEmpty) {
              //     return "Invalid Mobile Number".tr;
              //   }
              // },
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                hintText: "Phone Number".tr,
                fillColor: AppColors.textFiledColor,
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 4.w, vertical: 14.h),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              initialCountryCode: "BD",
              disableLengthCheck: false,
            ),
            CustomTextField(
              controller: controller.genderController,
              suffixIcon: buildPopupMenuButton(),
              labelText: "Gender".tr,
              onTap: () {
                buildPopupMenuButton();
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField(
              controller: controller.addressController,
              suffixIcon: const Icon(Icons.location_on),
              labelText: "Location".tr,
            ),
          ],
        );
      },
    );
  }

  PopupMenuButton<String> buildPopupMenuButton() {
    SignUpController controller = Get.put(SignUpController());
    return PopupMenuButton<String>(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: AppColors.primaryColor)),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'option1',
          child: Column(
            children: List.generate(
              controller.list.length,
              (index) => GestureDetector(
                onTap: () {
                  controller.onSelectItem(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.back),
                          color: AppColors.back,
                          shape: BoxShape.circle,
                        ),
                      ),
                      CustomText(
                        text: controller.list[index].toString(),
                        color: AppColors.back,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        left: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
      onOpened: () {
        controller.onChangeItem(false);
      },
      onCanceled: () {
        controller.onChangeItem(true);
      },
      icon: controller.isOpen
          ? const Icon(
              Icons.keyboard_arrow_up_outlined,
              color: Colors.black,
              size: 32,
            )
          : const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.black,
              size: 32,
            ),
    );
  }
}
