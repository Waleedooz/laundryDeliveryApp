import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/core/utils/validation_functions.dart';
import 'package:laundry_app/widgets/custom_button.dart';
import 'package:laundry_app/widgets/custom_floating_edit_text.dart';
import 'package:laundry_app/domain/googleauth/google_auth_helper.dart';





class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpController controller = Get.put(SignUpController());
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: ColorConstant.whiteA700,
          statusBarIconBrightness: Brightness.dark),
    );
    super.initState();
  }
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                body: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding:
                        getPadding(left: 16, top: 38, right: 16, bottom: 38),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(top: 4),
                                  child: Text("lbl_sign_up2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProDisplayBold34)),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: Text("msg_sign_up_and_be_part".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtBody)),


                              CustomFloatingEditText(
                                  controller: controller.nameController,
                                  labelText: "lbl_name".tr,
                                  hintText: "lbl_name".tr,
                                  shape: FloatingEditTextShape.RoundedBorder8,
                                  padding: FloatingEditTextPadding.PaddingT17,
                                  margin: getMargin(top: 36),
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter valid name";
                                    }
                                    return null;
                                  }),

                              CustomFloatingEditText(
                                  controller: controller.emailController,
                                  labelText: "lbl_email_address".tr,
                                  hintText: "lbl_email_address".tr,
                                  shape: FloatingEditTextShape.RoundedBorder8,
                                  padding: FloatingEditTextPadding.PaddingT17,
                                  margin: getMargin(top: 16),
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              SizedBox(height: getVerticalSize(16),),

                              phone_number_field(

                                  controller.phoneNumberController, (p0) {
                                if (p0 == null || p0.number.isEmpty) {
                                  return "Enter valid number";
                                }
                                return null;
                              }),

                              Obx(
                                    () => CustomFloatingEditText(
                                    controller: controller.passwordController,
                                    hintText: "lbl_password".tr,
                                    labelText: "lbl_password".tr,
                                    margin: getMargin(top: 16),
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
                                        maxHeight: getVerticalSize(63)),
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
                                  height: getVerticalSize(54),
                                  text: "lbl_sign_up2".tr,
                                  margin: getMargin(top: 30),
                                  onTap: () {
                                    if(_formKey.currentState!.validate()){
                                    onTapSignup();}
                                  }),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Text("lbl_or2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtBody)),

SizedBox(height: getVerticalSize(18),),
                              GestureDetector(
                                onTap: (){
                                  onTapContinuewith();
                                },
                                child: Container(
                                  decoration: BoxDecoration(color: ColorConstant.whiteA700,
                                      borderRadius: BorderRadius.circular(getHorizontalSize(16)),boxShadow: [
                                    BoxShadow(offset: Offset(0, 4),
                                    blurRadius: 4,
                                    color: ColorConstant.black900.withOpacity(0.06))
                                  ]),
                                  child: Padding(
                                    padding: getPadding(right: 28,left: 28,top: 16,bottom: 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                        height: getSize(24),
                                        width: getSize(24),
                                            svgPath: ImageConstant.imgGoogle),
                                        SizedBox(width: getHorizontalSize(16),),
                                        Text("msg_continue_with_google".tr,style: AppStyle.txtManropeRegular16Black600,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              
                              Spacer(),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtAlreadyhavean();
                                      },
                                      child: Padding(
                                          padding: getPadding(left: 75),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "lbl_already".tr,
                                                    style: TextStyle(
                                                        color:
                                                        ColorConstant.fromHex(
                                                            "#000000"),
                                                        fontSize: getFontSize(16),
                                                        fontFamily:
                                                        'SF Pro Display',
                                                        fontWeight:
                                                        FontWeight.w400)),
                                                TextSpan(
                                                    text: "msg_have_an_account".tr,
                                                    style: TextStyle(
                                                        color:
                                                        ColorConstant.fromHex(
                                                            "#000000"),
                                                        fontSize: getFontSize(16),
                                                        fontFamily:
                                                        'SF Pro Display',
                                                        fontWeight:
                                                        FontWeight.w400)),
                                                TextSpan(
                                                    text: "lbl_sign_in".tr,
                                                    style: TextStyle(
                                                        color:
                                                        ColorConstant.fromHex(
                                                            "#5a83fa"),
                                                        fontSize: getFontSize(16),
                                                        fontFamily: 'Manrope',
                                                        fontWeight:
                                                        FontWeight.w600))
                                              ]),
                                              textAlign: TextAlign.left))))
                            ]))))));
  }

  onTapSignup() {
    Get.toNamed(
      AppRoutes.citySelctionScreen,
    );
  }
  onTapContinuewith() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtAlreadyhavean() {
   Get.back();
  }
}







