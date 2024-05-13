// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// //
// // GestureDetector(
// // onTap: () => buildPopupMenuButton(controller),
// // child: Container(
// // height: 56,
// // margin: const EdgeInsets.only(bottom: 20),
// // width: double.infinity,
// // decoration: BoxDecoration(
// // color: AppColors.whiteColor,
// // borderRadius: BorderRadius.circular(8),
// // border:
// // Border.all(width: 1, color: AppColors.olive_300)),
// // child: buildPopupMenuButton(controller),
// // ),
// // ),
//
//
// PopupMenuButton<String> buildPopupMenuButton() {
//
//   return PopupMenuButton<String>(
//       onSelected: (String result) {
//         controller.changeMenuButton(false);
//         // Close the menu after selection
//       },
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//           side: const BorderSide(color: AppColors.olive_500)),
//       offset: const Offset(1, 1),
//       itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//             PopupMenuItem<String>(
//               value: 'option1',
//               child: Column(
//                 children: List.generate(
//                   ShopController.shopTitleList.length,
//                   (index) => GestureDetector(
//                     onTap: () {
//                       controller.selectedShop(index);
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Row(
//                         children: [
//                           Container(
//                             padding: const EdgeInsets.all(10),
//                             decoration: BoxDecoration(
//                               border: Border.all(color: AppColors.black_500),
//                               color: controller.selectedIndex == index
//                                   ? AppColors.olive_500
//                                   : AppColors.whiteColor,
//                               shape: BoxShape.circle,
//                             ),
//                           ),
//                           CustomText(
//                             text:
//                                 ShopController.shopTitleList[index].toString(),
//                             color: AppColors.black_500,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                             left: 12,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//       onOpened: () => controller.changeMenuButton(true),
//       onCanceled: () => controller.changeMenuButton(false),
//       icon: controller.showMenuButton
//           ? Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 CustomText(text: controller.categoryEditingController.text),
//                 const Icon(
//                   Icons.keyboard_arrow_up_outlined,
//                   color: Colors.black,
//                   size: 32,
//                 ),
//               ],
//             )
//           : Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 CustomText(text: controller.categoryEditingController.text),
//                 const Icon(
//                   Icons.keyboard_arrow_down_outlined,
//                   color: Colors.black,
//                   size: 32,
//                 ),
//               ],
//             ));
// }
//
// class Controller extends GetxController {
//
// }
