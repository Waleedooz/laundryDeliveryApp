import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/core/utils/validation_functions.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';
import 'package:laundry_app/widgets/custom_floating_edit_text.dart';
import 'package:laundry_app/widgets/custom_icon_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  EditProfileController controller = Get.put(EditProfileController());

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
    controller.nameController.text = "lbl_ronaldrichards".tr;
    controller.emailController.text = "ronaldrichards@gmail.com";
    controller.phoneNumberController.text = "(838) 484-379-7606";
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
                          onTapArrowleft13();
                        }),
                    centerTitle: true,
                    title: AppbarSubtitle(text: "lbl_edit_profile".tr),
                    styleType: Style.bgFillWhiteA700),
                body: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: double.maxFinite,
                        child: Container(
                            width: double.maxFinite,
                            margin: getMargin(top: 8),
                            padding: getPadding(
                                left: 16, top: 40, right: 16, bottom: 40),
                            decoration: AppDecoration.white.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: getSize(110),
                                      width: getSize(110),
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse240,
                                                height: getSize(110),
                                                width: getSize(110),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(55)),
                                                alignment: Alignment.center),
                                            CustomIconButton(
                                                height: 28,
                                                width: 28,
                                                margin: getMargin(bottom: 4),
                                                variant: IconButtonVariant
                                                    .OutlineBlack9000f,
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTicketBlack900))
                                          ])),
                                  CustomFloatingEditText(
                                      controller: controller.nameController,
                                      labelText: "lbl_name".tr,
                                      hintText: "lbl_ronaldrichards".tr,
                                      textInputType: TextInputType.name,
                                      margin: getMargin(top: 40),
                                      shape:
                                          FloatingEditTextShape.RoundedBorder8,
                                      padding:
                                          FloatingEditTextPadding.PaddingT17,
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "Please enter valid text";
                                        }
                                        return null;
                                      }),
                                  CustomFloatingEditText(
                                      controller: controller.emailController,
                                      labelText: "lbl_email_address".tr,
                                      hintText:
                                          "msg_ronaldrichards_gmail_com".tr,
                                      textInputType: TextInputType.emailAddress,
                                      margin: getMargin(top: 16),
                                      shape:
                                          FloatingEditTextShape.RoundedBorder8,
                                      padding:
                                          FloatingEditTextPadding.PaddingT17,
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidEmail(value,
                                                isRequired: true))) {
                                          return "Please enter valid email";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: getVerticalSize(16),
                                  ),
                                  phone_number_field(
                                      controller.phoneNumberController, (p0) {
                                    if (p0 == null || p0.number.isEmpty) {
                                      return "Enter valid number";
                                    }
                                    return null;
                                  }),
                                  Spacer(),
                                  CustomButton(
                                      height: getVerticalSize(54),
                                      text: "lbl_save".tr,
                                      onTap: () {
                                        onTapSave();
                                      })
                                ])))))));
  }

  onTapSave() {
    Get.back();
  }

  onTapArrowleft13() {
    Get.back();
  }
}
