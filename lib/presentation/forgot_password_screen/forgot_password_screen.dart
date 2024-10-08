import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/core/utils/validation_functions.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';
import 'package:laundry_app/widgets/custom_floating_edit_text.dart';



class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
 ForgotPasswordController controller = Get.put(ForgotPasswordController());
 GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
      Get.back();
       return true;
      },
      child: ColorfulSafeArea(
          color: ColorConstant.whiteA700,
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(79),
                  leadingWidth: 42,
                  leading: AppbarImage(
                      height: getVerticalSize(24),
                      width: getHorizontalSize(26),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 29, bottom: 26),
                      onTap: () {
                       onTapArrowleft();
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_forgot_password".tr),
                  styleType: Style.bgFillWhiteA700),
              body: Form(
                  key: _formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding:
                      getPadding(left: 16, top: 14, right: 16, bottom: 14),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Container(
                               width: getHorizontalSize(311),
                               margin: getMargin(left: 40, right: 43),
                               child: Text("msg_please_provide_the".tr,
                                   maxLines: null,
                                   textAlign: TextAlign.center,
                                   style: AppStyle.txtBody)),
                           CustomFloatingEditText(
                               controller: controller.emailController,
                               labelText: "lbl_email_address".tr,
                               hintText: "lbl_email_address".tr,
                               shape: FloatingEditTextShape.RoundedBorder8,
                               padding: FloatingEditTextPadding.PaddingT17,
                               margin: getMargin(top: 30),
                               textInputType: TextInputType.emailAddress,
                               validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value,
                                        isRequired: true))) {
                                 return "Please enter valid email";
                                }
                                return null;
                               }),
                           CustomButton(
                               height: getVerticalSize(54),
                               text: "lbl_send".tr,
                               margin: getMargin(top: 30, bottom: 5),
                               onTap: () {
                                if(_formKey.currentState!.validate()){
                                onTapSend();}
                               })
                          ]))))));
 }

 onTapSend() {
  Get.toNamed(
   AppRoutes.verificationOneScreen,
  );
 }

 onTapArrowleft() {
  Get.back();
 }
}






