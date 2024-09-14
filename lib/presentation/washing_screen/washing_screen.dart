import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import '../../widgets/custum_bottom_bar_controller.dart';
import '../washing_screen/widgets/washing_item_widget.dart';
import 'controller/washing_controller.dart';
import 'models/washing_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';

import 'models/washing_model.dart';



class WashingScreen extends StatefulWidget {
  const WashingScreen({Key? key}) : super(key: key);

  @override
  State<WashingScreen> createState() => _WashingScreenState();
}

class _WashingScreenState extends State<WashingScreen> {
  WashingController washingController = Get.put(WashingController());
  CustomBottomBarController customBottomBarController = Get.put(CustomBottomBarController());
  List<WashingItemModel> washingServices = WashingModel.washingItemList();

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
                      onTapArrowleft4();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_washing".tr),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                height: getVerticalSize(792),
                width: double.maxFinite,
                margin: getMargin(top: 8),
                decoration: AppDecoration.white,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(
                              left: 16, top: 16, right: 16, bottom: 96),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount:washingServices.length,
                              itemBuilder: (context, index) {
                                WashingItemModel model = washingServices[index];
                                return WashingItemWidget(model);
                              }))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.white,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_added_items".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSubheadline),
                                      Text("lbl_10_items".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSubheadline)
                                    ]),
                                CustomButton(
                                  onTap: (){
                                    Get.back();
                                    customBottomBarController.getIndex(2);
                                  },
                                    height: getVerticalSize(54),
                                    text: "lbl_continue".tr,
                                    margin: getMargin(top: 18, bottom: 12))
                              ])))
                ])))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}








