import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_button.dart';



class PasswordResetSuccesssPopUpScreen extends StatefulWidget {
  const PasswordResetSuccesssPopUpScreen({Key? key}) : super(key: key);

  @override
  State<PasswordResetSuccesssPopUpScreen> createState() => _PasswordResetSuccesssPopUpScreenState();
}

class _PasswordResetSuccesssPopUpScreenState extends State<PasswordResetSuccesssPopUpScreen> {
 @override
 void initState() {
  SystemChrome.setSystemUIOverlayStyle(
   SystemUiOverlayStyle(
       statusBarColor: ColorConstant.whiteA700,
       statusBarIconBrightness: Brightness.dark),
  );
  super.initState();
 }
 @override
 Widget build(BuildContext context) {
  return WillPopScope(
      onWillPop: () async {
      Get.offAllNamed(AppRoutes.logInScreen);
       return true;
      },
      child: ColorfulSafeArea(
          color: ColorConstant.whiteA700,
          child: Scaffold(
              backgroundColor: ColorConstant.gray5001,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 59, right: 59),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       CustomImageView(
                           svgPath: ImageConstant.imgGroup38069,
                           height: getVerticalSize(175),
                           width: getHorizontalSize(173)),
                       Padding(
                           padding: getPadding(top: 17),
                           child: Text("msg_password_reset".tr,
                               overflow: TextOverflow.ellipsis,
                               textAlign: TextAlign.left,
                               style: AppStyle.txtSFProDisplayBold22)),
                       Container(
                           width: getHorizontalSize(306),
                           margin: getMargin(top: 12),
                           child: Text("msg_you_have_successfully".tr,
                               maxLines: null,
                               textAlign: TextAlign.center,
                               style: AppStyle.txtBody)),
                       CustomButton(
                           height: getVerticalSize(53),
                           width: getHorizontalSize(164),
                           text: "lbl_go_to_login".tr,
                           margin: getMargin(top: 12, bottom: 5),
                           onTap: () {
                            onTapGotologin();
                           })
                      ])))));
 }


 onTapGotologin() {
  Get.offAllNamed(
   AppRoutes.logInScreen,
  );
 }
}





