import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wyndok/controllers/patients/message_controller.dart';
import 'package:wyndok/utils/app_colors.dart';
import 'package:wyndok/utils/app_icons.dart';
import 'package:wyndok/utils/app_images.dart';
import 'package:wyndok/view/common_widgets/image/custom_image.dart';
import '../../../common_widgets/text/custom_text.dart';
import '../../../common_widgets/text_field/custom_text_field.dart';
import 'widget/chat_bubble_message.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  // String chatId = Get.parameters["chatId"] ?? "";
  // String name = Get.parameters["name"] ?? "";
  // String type = Get.parameters["type"] ?? "";

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessageController>(builder: (controller) {
      return Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.sp,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: CustomImage(
                        imageSrc: AppImages.doctorSarah,
                        imageType: ImageType.png,
                        height: 60.sp,
                        width: 60.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Katryn Murphy",
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                      ),
                      CustomText(
                        text: "Therapist",
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            leadingWidth: Get.width,
          ),
          body: controller.isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  reverse: true,
                  controller: controller.scrollController,
                  itemCount: controller.isMoreLoading
                      ? controller.messages.length + 1
                      : controller.messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index < controller.messages.length) {
                      final message = controller.messages[index];
                      return ChatBubbleMessage(
                        index: index,
                        image: message.image,
                        isQuestion: message.isQuestion,
                        isNotice: message.isNotice,
                        time: message.time,
                        text: message.text,
                        isMe: message.isMe,
                        onTap: () {},
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
          bottomNavigationBar: AnimatedPadding(
            padding: MediaQuery.of(context).viewInsets,
            duration: const Duration(milliseconds: 100),
            curve: Curves.decelerate,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      padding: EdgeInsets.all(6.sp),
                      margin: EdgeInsets.only(right: 10.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: AppColors.black)),
                      child: const CustomImage(imageSrc: AppIcons.file),
                    ),
                    Expanded(
                      child: CustomTextField(
                        maxLines: null,
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.start,
                        hindText: "",
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: const CustomImage(
                            imageSrc: AppIcons.send,
                          ),
                        ),
                        textStyle: GoogleFonts.prompt(
                            fontSize: 14.h,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackLightHover),
                        fieldBorderColor: Colors.white,
                        fieldBorderRadius: 8,
                        controller: controller.messageController,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ));
    });
  }
}
