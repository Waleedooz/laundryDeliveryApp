import 'controller/add_a_card_one_controller.dart';import 'package:flutter/material.dart';import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/core/utils/validation_functions.dart';import 'package:laundry_app/widgets/app_bar/appbar_image.dart';import 'package:laundry_app/widgets/app_bar/appbar_title.dart';import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';import 'package:laundry_app/widgets/custom_button.dart';import 'package:laundry_app/widgets/custom_floating_edit_text.dart';
// ignore_for_file: must_be_immutable
class AddACardOneScreen extends GetWidget<AddACardOneController> {AddACardOneScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.gray5001, appBar: CustomAppBar(height: getVerticalSize(79), leadingWidth: 42, leading: AppbarImage(height: getVerticalSize(24), width: getHorizontalSize(26), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 16, top: 29, bottom: 26), onTap: () {onTapArrowleft15();}), centerTitle: true, title: AppbarTitle(text: "lbl_add_card".tr), styleType: Style.bgFillWhiteA700), body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Container(width: double.maxFinite, margin: getMargin(top: 10), padding: getPadding(all: 16), decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomFloatingEditText(focusNode: FocusNode(), autofocus: true, controller: controller.cardnumberController, labelText: "lbl_card_number".tr, hintText: "lbl_1234_5678_1234".tr, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "Please enter valid number";} return null;}), Padding(padding: getPadding(top: 16), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomFloatingEditText(focusNode: FocusNode(), autofocus: true, controller: controller.dateController, labelText: "lbl_exp_date".tr, hintText: "lbl_06_26".tr, margin: getMargin(right: 8), variant: FloatingEditTextVariant.OutlineGray400, shape: FloatingEditTextShape.RoundedBorder8, padding: FloatingEditTextPadding.PaddingT17, fontStyle: FloatingEditTextFontStyle.SFProDisplayRegular16)), Expanded(child: CustomFloatingEditText(focusNode: FocusNode(), autofocus: true, controller: controller.cvvController, labelText: "lbl_cvv".tr, hintText: "lbl_123".tr, margin: getMargin(left: 8), variant: FloatingEditTextVariant.OutlineGray400, shape: FloatingEditTextShape.RoundedBorder8, padding: FloatingEditTextPadding.PaddingT17, fontStyle: FloatingEditTextFontStyle.SFProDisplayRegular16, textInputAction: TextInputAction.done))])), CustomButton(height: getVerticalSize(54), text: "lbl_add_card2".tr, margin: getMargin(top: 30, bottom: 5), shape: ButtonShape.RoundedBorder16, onTap: () {onTapAddcard();})])))))); } 
/// Navigates to the myCardsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the myCardsScreen.
onTapAddcard() { Get.toNamed(AppRoutes.myCardsScreen, ); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleft15() { Get.back(); } 
 }
