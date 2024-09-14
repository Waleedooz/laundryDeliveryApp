import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';
import 'controller/add_new_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/core/utils/validation_functions.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';
import 'package:laundry_app/widgets/custom_drop_down.dart';
import 'package:laundry_app/widgets/custom_floating_edit_text.dart';





class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  AddNewAddressController controller = Get.put(AddNewAddressController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
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
                height: getVerticalSize(81),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(26),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 29, bottom: 28),
                    onTap: () {
                      onTapArrowleft19();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_add_new_address".tr),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        width: double.maxFinite,
                        margin: getMargin(top: 8),
                        padding: getPadding(all: 16),
                        decoration: AppDecoration.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              CustomFloatingEditText(
                                  controller: controller.nameController,
                                  labelText: "lbl_name".tr,
                                  hintText:  "lbl_name".tr,
                                  shape: FloatingEditTextShape.RoundedBorder8,
                                  padding: FloatingEditTextPadding.PaddingT17,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomFloatingEditText(
                                  controller: controller.addressoneController,
                                  labelText: "lbl_address_line_1".tr,
                                  hintText:  "lbl_address_line_1".tr,
                                  shape: FloatingEditTextShape.RoundedBorder8,
                                  padding: FloatingEditTextPadding.PaddingT17,
                                  margin: getMargin(top: 16),
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              // CustomFloatingEditText(
                              //     focusNode: FocusNode(),
                              //     autofocus: true,
                              //     controller: controller.,
                              //     labelText: "lbl_address_line_1".tr,
                              //     hintText: "msg_parker_rd_allentown".tr,
                              //     margin: getMargin(top: 16),
                              //     fontStyle: FloatingEditTextFontStyle
                              //         .SFProDisplayRegular17),

                              CustomFloatingEditText(
                                  controller: controller.addressController,
                                  labelText: "lbl_address_line_2".tr,
                                  hintText:  "lbl_address_line_2".tr,
                                  shape: FloatingEditTextShape.RoundedBorder8,
                                  padding: FloatingEditTextPadding.PaddingT17,
                                  margin: getMargin(top: 16),
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),

// SizedBox(height: getVerticalSize(16),),


                              // CustomFloatingEditText(
                              //     focusNode: FocusNode(),
                              //     autofocus: true,
                              //     controller: controller.addressoneController,
                              //     labelText: "lbl_address_line_2".tr,
                              //     hintText: "msg_new_mexico_31134".tr,
                              //     margin: getMargin(top: 16),
                              //     fontStyle: FloatingEditTextFontStyle
                              //         .SFProDisplayRegular17),


                              // CSCPicker(
                              //   showStates: true,
                              //   disabledDropdownDecoration: BoxDecoration(
                              //       borderRadius: BorderRadius.all(Radius.circular(getHorizontalSize(8))),
                              //       color:ColorConstant.whiteA700,
                              //       border: Border.all(color: ColorConstant.otpBorder)),
                              //   dropdownDecoration: BoxDecoration(
                              //       borderRadius: BorderRadius.all(Radius.circular(getHorizontalSize(8))),
                              //       color: ColorConstant.whiteA700,
                              //       border: Border.all(color: ColorConstant.otpBorder)),
                              //   showCities: true,
                              //   selectedCountry: countryValue,
                              //   selectedState: stateValue,
                              //   selectedCity: cityValue,
                              //   flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,
                              //   dropdownItemStyle: AppStyle.txtBody16Black600,
                              //   selectedItemStyle: AppStyle.txtBody16Black600,
                              //   onCountryChanged: (value) {
                              //     print("getcountr===$value");
                              //     countryValue = "";
                              //     stateValue = "";
                              //     cityValue = "";
                              //     // shippingCont.changeCountry(value);
                              //   },
                              //   onStateChanged: (value) {
                              //     if (value != null) {
                              //       countryValue = "";
                              //       stateValue = "";
                              //       cityValue = "";
                              //       // shippingCont.changeState(value);
                              //     }
                              //   },
                              //   onCityChanged: (value) {
                              //     if (value != null) {
                              //       countryValue = "";
                              //       stateValue = "";
                              //       cityValue = "";
                              //       // shippingCont.changeCity(value);
                              //     }
                              //   },
                              // ),





                              CustomDropDown(
                                  padding:DropDownPadding.PaddingT17,
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 15),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgArrowdown)),
                                  hintText: "lbl_united_state".tr,
                                  margin: getMargin(top: 16),
                                  items: controller.addNewAddressModelObj.value
                                      .dropdownItemList.value,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  }),
                              CustomDropDown(
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 15),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgArrowdown)),
                                  hintText: "lbl_new_york2".tr,
                                  margin: getMargin(top: 16),
                                  items: controller.addNewAddressModelObj.value
                                      .dropdownItemList1.value,
                                  onChanged: (value) {
                                    controller.onSelected1(value);
                                  }),
                              CustomDropDown(
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 15),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgArrowdown)),
                                  hintText: "lbl_broome".tr,
                                  margin: getMargin(top: 16),
                                  items: controller.addNewAddressModelObj.value
                                      .dropdownItemList2.value,
                                  onChanged: (value) {
                                    controller.onSelected2(value);
                                  }),



                              // Container(
                              //     height: getVerticalSize(64),
                              //     width: getHorizontalSize(396),
                              //     margin: getMargin(top: 16),
                              //     child: Stack(
                              //         alignment: Alignment.topLeft,
                              //         children: [
                              //           Container(
                              //               decoration: BoxDecoration(
                              //                   color: ColorConstant.whiteA700,
                              //                   borderRadius:
                              //                   BorderRadius.circular(
                              //                       getHorizontalSize(16)),
                              //                   border: Border.all(
                              //                       color:
                              //                       ColorConstant.gray400,
                              //                       width:
                              //                       getHorizontalSize(1))),
                              //               child: Row(children: [
                              //                 Padding(
                              //                     padding: getPadding(
                              //                         left: 16,
                              //                         top: 16,
                              //                         bottom: 16),
                              //                     child: CountryPickerUtils
                              //                         .getDefaultFlagImage(
                              //                         Country(isoCode: "", iso3Code: "", phoneCode: "", name: ""))),
                              //                 Padding(
                              //                     padding: getPadding(
                              //                         left: 16, right: 6),
                              //                     child: CountryPickerUtils
                              //                         .getDefaultFlagImage(
                              //                         Country(isoCode: "", iso3Code: "", phoneCode: "", name: "")))
                              //               ])),
                              //           Align(
                              //               alignment: Alignment.topLeft,
                              //               child: Container(
                              //                   width: getHorizontalSize(86),
                              //                   margin: getMargin(left: 19),
                              //                   padding: getPadding(
                              //                       left: 3,
                              //                       top: 1,
                              //                       right: 3,
                              //                       bottom: 1),
                              //                   decoration:
                              //                   AppDecoration.txtWhite,
                              //                   child: Text(
                              //                       "lbl_phone_number".tr,
                              //                       overflow:
                              //                       TextOverflow.ellipsis,
                              //                       textAlign: TextAlign.left,
                              //                       style:
                              //                       AppStyle.txtFootnote)))
                              //         ])),


                              SizedBox(height: getVerticalSize(16),),

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
                                  margin: getMargin(bottom: 24),
                                  onTap: () {
                                    onTapSave();
                                  })
                            ])))))));
  }


  onTapSave() {
    Get.back();
  }

  onTapArrowleft19() {
    Get.back();
  }
}










