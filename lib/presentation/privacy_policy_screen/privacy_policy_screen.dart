import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import 'controller/privacy_policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  PrivacyPolicyController controller = Get.put(PrivacyPolicyController());

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
                backgroundColor: ColorConstant.gray200,
                appBar: CustomAppBar(
                    height: getVerticalSize(79),
                    leadingWidth: 42,
                    leading: AppbarImage(
                        height: getVerticalSize(24),
                        width: getHorizontalSize(26),
                        svgPath: ImageConstant.imgArrowleft,
                        margin: getMargin(left: 16, top: 29, bottom: 26),
                        onTap: () {
                          onTapArrowleft21();
                        }),
                    centerTitle: true,
                    title: AppbarSubtitle(text: "lbl_privacy_policy2".tr),
                    styleType: Style.bgFillWhiteA700),
                body: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        width: getHorizontalSize(427),
                        margin: getMargin(left: 1, top: 8),
                        padding: getPadding(
                            left: 16, top: 17, right: 16, bottom: 17),
                        decoration: AppDecoration.white,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("msg_1_types_of_data".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtHeadline),
                              Container(
                                  width: getHorizontalSize(390),
                                  margin: getMargin(top: 5),
                                  child: Text("msg_duis_tristique_diam".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtBody)),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("msg_2_use_of_your_personal".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProDisplayBold20)),
                              Container(
                                  width: getHorizontalSize(377),
                                  margin: getMargin(top: 13, right: 17),
                                  child: Text("msg_sed_sollicitudin".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtBody)),
                              Padding(
                                  padding: getPadding(top: 42),
                                  child: Text("msg_3_disclosure_of".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProDisplayBold20)),
                              Container(
                                  width: getHorizontalSize(383),
                                  margin:
                                      getMargin(top: 13, right: 11, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_sed_sollicitudin3".tr,
                                            style: TextStyle(
                                                color: ColorConstant.fromHex(
                                                    "#000000"),
                                                fontSize: getFontSize(16),
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "msg_maecenas_egestas".tr,
                                            style: TextStyle(
                                                color: ColorConstant.fromHex(
                                                    "#000000"),
                                                fontSize: getFontSize(16),
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400))
                                      ]),
                                      textAlign: TextAlign.left))
                            ]))))));
  }

  onTapArrowleft21() {
    Get.back();
  }
}
