import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import 'controller/add_a_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/core/utils/validation_functions.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_title.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';
import 'package:laundry_app/widgets/custom_floating_edit_text.dart';

class AddACardScreen extends StatefulWidget {
  const AddACardScreen({Key? key}) : super(key: key);

  @override
  State<AddACardScreen> createState() => _AddACardScreenState();
}

class _AddACardScreenState extends State<AddACardScreen> {
  AddACardController controller = Get.put(AddACardController());
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
                backgroundColor: ColorConstant.gray5001,
                appBar: CustomAppBar(
                    height: getVerticalSize(79),
                    leadingWidth: 42,
                    leading: AppbarImage(
                        height: getVerticalSize(24),
                        width: getHorizontalSize(26),
                        svgPath: ImageConstant.imgArrowleft,
                        margin: getMargin(left: 16, top: 29, bottom: 26),
                        onTap: () {
                          onTapArrowleft14();
                        }),
                    centerTitle: true,
                    title: AppbarTitle(text: "lbl_add_card".tr),
                    styleType: Style.bgFillWhiteA700),
                body: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: double.maxFinite,
                        child: Container(
                            width: double.maxFinite,
                            margin: getMargin(top: 10),
                            padding: getPadding(all: 16),
                            decoration: AppDecoration.white,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomFloatingEditText(
                                      labelText: "lbl_card_number".tr,
                                      hintText: "1234 5678 5689".tr,
                                      textInputType: TextInputType.number,
                                      shape:
                                          FloatingEditTextShape.RoundedBorder8,
                                      padding:
                                          FloatingEditTextPadding.PaddingT17,
                                      validator: (value) {
                                        if (!isNumeric(value)) {
                                          return "Please enter valid number";
                                        }
                                        return null;
                                      }),
                                  Padding(
                                      padding: getPadding(top: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                child: CustomFloatingEditText(
                                                    controller: controller
                                                        .dateController,
                                                    labelText:
                                                        "lbl_exp_date".tr,
                                                    hintText: "lbl_mm_yy".tr,
                                                    margin: getMargin(right: 8),
                                                    variant:
                                                        FloatingEditTextVariant
                                                            .OutlineGray400,
                                                    shape: FloatingEditTextShape
                                                        .RoundedBorder8,
                                                    padding:
                                                        FloatingEditTextPadding
                                                            .PaddingT17,
                                                    fontStyle:
                                                        FloatingEditTextFontStyle
                                                            .SFProDisplayRegular16)),
                                            Expanded(
                                                child: CustomFloatingEditText(
                                                    controller: controller
                                                        .cvvController,
                                                    labelText: "lbl_cvv".tr,
                                                    hintText: "lbl_123".tr,
                                                    margin: getMargin(left: 8),
                                                    variant:
                                                        FloatingEditTextVariant
                                                            .OutlineGray400,
                                                    shape: FloatingEditTextShape
                                                        .RoundedBorder8,
                                                    padding:
                                                        FloatingEditTextPadding
                                                            .PaddingT17,
                                                    fontStyle:
                                                        FloatingEditTextFontStyle
                                                            .SFProDisplayRegular16,
                                                    textInputAction:
                                                        TextInputAction.done))
                                          ])),
                                  CustomButton(
                                      height: getVerticalSize(54),
                                      text: "lbl_add_card2".tr,
                                      margin: getMargin(top: 30, bottom: 5),
                                      shape: ButtonShape.RoundedBorder16,
                                      onTap: () {
                                        onTapAddcard();
                                      })
                                ])))))));
  }

  onTapAddcard() {
    Get.back();
  }

  onTapArrowleft14() {
    Get.back();
  }
}
