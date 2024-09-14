import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import '../address_screen/widgets/address_item_widget.dart';
import 'controller/address_controller.dart';
import 'models/address_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';



class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  AddressController controller = Get.put(AddressController());
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
                          onTapArrowleft9();
                        }),
                    centerTitle: true,
                    title: AppbarSubtitle(text: "lbl_address".tr),
                    styleType: Style.bgFillWhiteA700),
                body: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        width: double.maxFinite,
                        margin: getMargin(top: 8),
                        padding:
                        getPadding(left: 16, top: 20, right: 16, bottom: 20),
                        decoration: AppDecoration.white,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_pickup_address".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProDisplaySemibold18),
                              Expanded(
                                  child: Padding(
                                      padding: getPadding(top: 16),
                                      child: ListView.separated(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: controller.addressData.length,
                                          itemBuilder: (context, index) {
                                            AddressItemModel model = controller.addressData[index];
                                            return AddressItemWidget(model,index);
                                          }))),

                              GestureDetector(
                                onTap: (){
                                  onTapAddnewaddress();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(svgPath: ImageConstant.imgPlusBlack900),
                                    SizedBox(width: getHorizontalSize(8),),
                                    Text("lbl_add_new_address".tr,style: AppStyle.txtSubheadline,),
                                  ],
                                ),
                              ),

                              // CustomButton(
                              //     width: getHorizontalSize(139),
                              //     text: "lbl_add_new_address".tr,
                              //     margin: getMargin(top: 24),
                              //     shape: ButtonShape.Square,
                              //     padding: ButtonPadding.PaddingT2,
                              //     fontStyle: ButtonFontStyle.SFProDisplaySemibold14,
                              //     prefixWidget: Container(
                              //         margin: getMargin(right: 8),
                              //         child: CustomImageView(
                              //             svgPath: ImageConstant.imgPlusBlack900)),
                              //     onTap: () {
                              //       onTapAddnewaddress();
                              //     },
                              //     alignment: Alignment.center),
                              CustomButton(
                                  height: getVerticalSize(54),
                                  text: "lbl_proceed".tr,
                                  margin: getMargin(top: 235, bottom: 5),
                                  onTap: () {
                                    onTapProceed();
                                  })
                            ]))))));
  }

  onTapAddnewaddress() {
    Get.toNamed(
      AppRoutes.addNewAddressScreen,
    );
  }

  onTapProceed() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }

  onTapArrowleft9() {
    Get.back();
  }
}





