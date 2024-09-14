import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgXmlid1,
                          height: getVerticalSize(57),
                          width: getHorizontalSize(72)),
                      Padding(
                          padding: getPadding(top: 19, bottom: 5),
                          child: Text("lbl_laundry".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeExtraBold30))
                    ]))));
  }
}
