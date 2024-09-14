import '../../widgets/custum_bottom_bar_controller.dart';
import 'controller/log_out_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_button.dart';

class LogOutScreen extends GetWidget<LogOutController> {
  const LogOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomBottomBarController>(
      init: CustomBottomBarController(),
      builder:(controller) =>  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
           SizedBox(
               width: double.maxFinite,
               child: Container(
                   margin: getMargin(bottom: 5),
                   padding: getPadding(
                       left: 30, top: 31, right: 30, bottom: 31),
                   decoration: AppDecoration.white.copyWith(
                       borderRadius:
                       BorderRadiusStyle.roundedBorder16),
                   child: Column(
                       mainAxisSize: MainAxisSize.min,
                       mainAxisAlignment:
                       MainAxisAlignment.center,
                       children: [
                        Text("msg_are_you_sure_you2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtHeadline),
                        Padding(
                            padding:
                            getPadding(top: 27, bottom: 2),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                 Expanded(
                                     child: CustomButton(
                                       onTap: (){
                                         Get.back();
                                       },
                                         height:
                                         getVerticalSize(
                                             46),
                                         text: "lbl_cancel".tr,
                                         margin: getMargin(
                                             right: 10),
                                         variant: ButtonVariant
                                             .OutlineIndigoA200,
                                         padding: ButtonPadding
                                             .PaddingAll12,
                                         fontStyle: ButtonFontStyle
                                             .SFProDisplayBold18IndigoA200)),
                                 Expanded(
                                     child: CustomButton(
                                         height:
                                         getVerticalSize(
                                             46),
                                         text:
                                         "Log out",
                                         margin: getMargin(
                                             left: 10),
                                         padding: ButtonPadding
                                             .PaddingAll12,
                                         onTap: () {
                                           PrefUtils.setIsSignIn(true);
                                           controller.getIndex(0);
                                           Get.offAllNamed(AppRoutes.logInScreen);
                                         }))
                                ]))
                       ])))
          ]),
    );
  }

  onTapLogout() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}
