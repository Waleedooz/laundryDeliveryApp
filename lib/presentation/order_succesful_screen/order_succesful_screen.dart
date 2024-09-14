import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import '../../widgets/custum_bottom_bar_controller.dart';
import 'controller/order_succesful_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_button.dart';




class OrderSuccesfulScreen extends StatefulWidget {
  const OrderSuccesfulScreen({Key? key}) : super(key: key);

  @override
  State<OrderSuccesfulScreen> createState() => _OrderSuccesfulScreenState();
}

class _OrderSuccesfulScreenState extends State<OrderSuccesfulScreen> {
 OrderSuccesfulController controller = Get.put(OrderSuccesfulController());
 CustomBottomBarController customBottomBarController = Get.put(CustomBottomBarController());
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
  return  WillPopScope(
      onWillPop: () async {
        customBottomBarController.getIndex(0);
   Get.offAllNamed(AppRoutes.homePageContainer1Screen);
   return false;
  },
  child: ColorfulSafeArea(
  color: ColorConstant.whiteA700,
  child: Scaffold(
          backgroundColor: ColorConstant.gray5001,
          body: SizedBox(
              width: double.maxFinite,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   CustomImageView(
                       svgPath: ImageConstant.imgGroup38069,
                       height: getVerticalSize(175),
                       width: getHorizontalSize(173)),
                   Padding(
                       padding: getPadding(top: 21),
                       child: Text("msg_your_order_has_been".tr,
                           overflow: TextOverflow.ellipsis,
                           textAlign: TextAlign.left,
                           style: AppStyle.txtSFProDisplayBold22)),
                   Padding(
                       padding: getPadding(top: 22),
                       child: RichText(
                           text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_status".tr,
                                style: TextStyle(
                                    color: ColorConstant.fromHex("#000000"),
                                    fontSize: getFontSize(18),
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w700)),
                            TextSpan(
                                text: "lbl_pending".tr,
                                style: TextStyle(
                                    color: ColorConstant.fromHex("#db9e00"),
                                    fontSize: getFontSize(18),
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w700))
                           ]),
                           textAlign: TextAlign.left)),
                   Padding(
                       padding: getPadding(top: 19),
                       child: Text("lbl_id_3655".tr,
                           overflow: TextOverflow.ellipsis,
                           textAlign: TextAlign.left,
                           style: AppStyle.txtHeadline)),
                   CustomButton(
                       height: getVerticalSize(53),
                       width: getHorizontalSize(164),
                       text: "lbl_go_to_home".tr,
                       margin: getMargin(top: 21, bottom: 5),
                       onTap: () {
                        onTapGotohome();
                       })
                  ])))));
 }

 onTapGotohome() {
   customBottomBarController.getIndex(0);
   Get.offAllNamed(AppRoutes.homePageContainer1Screen);
 }
}






