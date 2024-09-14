import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import '../../widgets/custom_floating_edit_text.dart';
import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';



class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
 ResetPasswordController controller = Get.put(ResetPasswordController());
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
                       onTapArrowleft3();
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_reset_password".tr),
                  styleType: Style.bgFillWhiteA700),
              body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 16, top: 15, right: 16, bottom: 15),
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
                         Obx(
                              () => CustomFloatingEditText(
                              controller: controller.newpasswordController,
                              hintText: "lbl_password".tr,
                              labelText: "lbl_password".tr,
                              margin: getMargin(top: 24),
                              shape: FloatingEditTextShape.RoundedBorder8,
                              padding: FloatingEditTextPadding.PaddingT17,
                              textInputType: TextInputType.emailAddress,
                              isObscureText:
                              controller.isShowPassword.value,
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin:
                                          getMargin(left: 16, right: 16),
                                          child: CustomImageView(
                                              svgPath: controller
                                                  .isShowPassword.value
                                                  ? ImageConstant
                                                  .imgIcPasswordStoke
                                                  : ImageConstant
                                                  .imgIcPasswordStoke))),
                                  suffixConstraints: BoxConstraints(
                                      minHeight: getVerticalSize(54),
                                      maxHeight: getVerticalSize(54)),
                              validator: (value) {
                               if (value == null || value.isEmpty) {
                                return "Please enter valid password";
                               } else if (value.length < 8) {
                                return "Please enter 8 digit password";
                               }
                               return null;
                              }),
                         ),


                          Obx(
                                () => CustomFloatingEditText(
                                controller: controller.confirmpasswordController,
                                hintText: "msg_confirm_password".tr,
                                labelText: "msg_confirm_password".tr,
                                margin: getMargin(top: 24),
                                shape: FloatingEditTextShape.RoundedBorder8,
                                padding: FloatingEditTextPadding.PaddingT17,
                                textInputType: TextInputType.emailAddress,
                                isObscureText:
                                controller.isShowPassword1.value,
                                    suffix: InkWell(
                                        onTap: () {
                                          controller.isShowPassword1.value =
                                          !controller.isShowPassword1.value;
                                        },
                                        child: Container(
                                            margin:
                                            getMargin(left: 16, right: 16),
                                            child: CustomImageView(
                                                svgPath: controller
                                                    .isShowPassword1.value
                                                    ? ImageConstant
                                                    .imgIcPasswordStoke
                                                    : ImageConstant
                                                    .imgIcPasswordStoke))),
                                    suffixConstraints: BoxConstraints(
                                        minHeight: getVerticalSize(54),
                                        maxHeight: getVerticalSize(54)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter valid password";
                                  } else if (value.length < 8) {
                                    return "Please enter 8 digit password";
                                  }
                                  return null;
                                }),
                          ),

                         CustomButton(
                             height: getVerticalSize(53),
                             text: "lbl_reset_password".tr,
                             margin: getMargin(top: 30, bottom: 5),
                             shape: ButtonShape.RoundedBorder16,
                             fontStyle: ButtonFontStyle.OutfitBold18,
                             onTap: () {
                               if(_formKey.currentState!.validate()){
                              onTapResetpassword();}
                             })
                        ])),
              ))));
 }

 onTapResetpassword() {
  Get.toNamed(
   AppRoutes.passwordResetSuccesssPopUpScreen,
  );
 }

 onTapArrowleft3() {
  Get.back();
 }
}





