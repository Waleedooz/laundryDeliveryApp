import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:pinput/pinput.dart';

import 'controller/verification_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';



class VerificationOneScreen extends StatefulWidget {
  const VerificationOneScreen({Key? key}) : super(key: key);

  @override
  State<VerificationOneScreen> createState() => _VerificationOneScreenState();
}

class _VerificationOneScreenState extends State<VerificationOneScreen> {
  VerificationOneController controller = Get.put(VerificationOneController());
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
                          onTapArrowleft1();
                        }),
                    centerTitle: true,
                    title: AppbarSubtitle(text: "lbl_verification".tr),
                    styleType: Style.bgFillWhiteA700),
                body: Form(
                  key: _formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding: getPadding(left: 16, top: 14, right: 16, bottom: 14),
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
                            Padding(
                                padding: getPadding(top: 28),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_code_sent_to".tr,
                                          style: TextStyle(
                                              color: ColorConstant.fromHex("#000000"),
                                              fontSize: getFontSize(16),
                                              fontFamily: 'Outfit',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "msg_ronaldrichards_gmail_com".tr,
                                          style: TextStyle(
                                              color: ColorConstant.fromHex("#000000"),
                                              fontSize: getFontSize(16),
                                              fontFamily: 'Outfit',
                                              fontWeight: FontWeight.w600))
                                    ]),
                                    textAlign: TextAlign.left)),



                            Padding(
                                padding: getPadding(left: 3, top: 29, right: 3),
                                child: Obx(() =>

                                    Pinput(

                                      errorTextStyle:  TextStyle(
                                        color:ColorConstant.red,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Manrope',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      disabledPinTheme: PinTheme(
                                          padding: getPadding(left: 9,right: 9),
                                          decoration: BoxDecoration(color: Colors.red)
                                      ),
                                      controller: controller.otpController.value,
                                      length: 6,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter valid code";
                                        }
                                        return null;
                                      },
                                      errorPinTheme: PinTheme(
                                        padding: getPadding(left: 9,right: 9),
                                        decoration: BoxDecoration(
                                          color:ColorConstant.whiteA700,
                                          border: Border.all(color:ColorConstant.red ),
                                          borderRadius:  BorderRadius.circular(
                                            getHorizontalSize(8),),

                                        ),
                                        textStyle: TextStyle(
                                          color:ColorConstant.red,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        width: getHorizontalSize(51),
                                        height: getVerticalSize(51),
                                      ),
                                      defaultPinTheme: PinTheme(
                                        padding: getPadding(left: 9,right: 9),
                                        width: getHorizontalSize(51),
                                        height: getVerticalSize(51),
                                        textStyle:TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(
                                            24,
                                          ),
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        decoration: BoxDecoration(
                                          color:ColorConstant.whiteA700,
                                          border: Border.all(color:ColorConstant.otpBorder ),
                                          borderRadius:  BorderRadius.circular(
                                            getHorizontalSize(8),),

                                        ),
                                      ),
                                    ),)),



                            // Padding(
                            //     padding: getPadding(left: 3, top: 24, right: 3),
                            //     child: Obx(() => PinCodeTextField(
                            //         appContext: context,
                            //         controller: controller.otpController.value,
                            //         length: 6,
                            //         obscureText: false,
                            //         obscuringCharacter: '*',
                            //         keyboardType: TextInputType.number,
                            //         autoDismissKeyboard: true,
                            //         enableActiveFill: true,
                            //         inputFormatters: [
                            //           FilteringTextInputFormatter.digitsOnly
                            //         ],
                            //         onChanged: (value) {},
                            //         pinTheme: PinTheme(
                            //             fieldHeight: getHorizontalSize(50),
                            //             fieldWidth: getHorizontalSize(50),
                            //             shape: PinCodeFieldShape.box,
                            //             borderRadius: BorderRadius.circular(
                            //                 getHorizontalSize(8)),
                            //             selectedFillColor: ColorConstant.whiteA700,
                            //             activeFillColor: ColorConstant.whiteA700,
                            //             inactiveFillColor: ColorConstant.whiteA700,
                            //             inactiveColor: ColorConstant.gray400,
                            //             selectedColor: ColorConstant.gray400,
                            //             activeColor: ColorConstant.gray400)))),
                            CustomButton(
                                height: getVerticalSize(53),
                                text: "lbl_send".tr,
                                margin: getMargin(top: 30),
                                shape: ButtonShape.RoundedBorder16,
                                fontStyle: ButtonFontStyle.OutfitBold18,
                                onTap: () {
                                  if(_formKey.currentState!.validate()){
                                    onTapSend();}
                                }),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: getPadding(top: 29, right: 160),
                                    child: Text("lbl_00_25".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtHeadline))),
                            Padding(
                                padding: getPadding(top: 21, bottom: 5),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_didn_t_receive_a2".tr,
                                          style: TextStyle(
                                              color: ColorConstant.fromHex("#808080"),
                                              fontSize: getFontSize(16),
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: " ",
                                          style: TextStyle(
                                              color: ColorConstant.fromHex("#000000"),
                                              fontSize: getFontSize(16),
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "lbl_resend_code".tr,
                                          style: TextStyle(
                                              color: ColorConstant.fromHex("#000000"),
                                              fontSize: getFontSize(16),
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.w600))
                                    ]),
                                    textAlign: TextAlign.left))
                          ])),
                ))));
  }

  onTapSend() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }

  onTapArrowleft1() {
    Get.back();
  }
}









