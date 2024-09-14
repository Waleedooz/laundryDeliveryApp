import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import '../order_details_screen/widgets/order_details_item_widget.dart';
import 'controller/order_details_controller.dart';
import 'models/order_details_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';

import 'models/order_details_model.dart';



class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
 OrderDetailsController orderDetailsController = Get.put(OrderDetailsController());
 List<OrderDetailsItemModel> orederItems = OrderDetailsModel.orderDetailsItemList();
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
                   onTapArrowleft11();
                  }),
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_order_details".tr),
              styleType: Style.bgFillWhiteA700),
          body: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                  padding: getPadding(top: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       SizedBox(
                           width: double.maxFinite,
                           child: Container(
                               padding: getPadding(
                                   left: 16, top: 14, right: 16, bottom: 14),
                               decoration: AppDecoration.white.copyWith(
                                   borderRadius:
                                   BorderRadiusStyle.roundedBorder8),
                               child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   crossAxisAlignment:
                                   CrossAxisAlignment.start,
                                   mainAxisAlignment:
                                   MainAxisAlignment.center,
                                   children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                             Padding(
                                                 padding:
                                                 getPadding(top: 1),
                                                 child: Text(
                                                     "msg_order_no_123987254"
                                                         .tr,
                                                     overflow: TextOverflow
                                                         .ellipsis,
                                                     textAlign:
                                                     TextAlign.left,
                                                     style: AppStyle
                                                         .txtManropeBold16)),
                                             Padding(
                                                 padding:
                                                 getPadding(bottom: 1),
                                                 child: Text(
                                                     "lbl_15_00".tr,
                                                     overflow: TextOverflow
                                                         .ellipsis,
                                                     textAlign:
                                                     TextAlign.left,
                                                     style: AppStyle
                                                         .txtManropeRegular16Black900))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                             Container(
                                                 height: getSize(10),
                                                 width: getSize(10),
                                                 margin: getMargin(
                                                     top: 1, bottom: 0),
                                                 decoration: BoxDecoration(
                                                     color: ColorConstant
                                                         .greenA700,
                                                     borderRadius:
                                                     BorderRadius.circular(
                                                         getHorizontalSize(
                                                             5)))),
                                             Padding(
                                                 padding:
                                                 getPadding(left: 8),
                                                 child: Text(
                                                     "msg_order_at_6_35_pm"
                                                         .tr,
                                                     overflow: TextOverflow
                                                         .ellipsis,
                                                     textAlign:
                                                     TextAlign.left,
                                                     style:
                                                     AppStyle.txtBody))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 5),
                                        child: Row(children: [
                                         Padding(
                                             padding:
                                             getPadding(bottom: 1),
                                             child: Text("lbl_status2".tr,
                                                 overflow:
                                                 TextOverflow.ellipsis,
                                                 textAlign: TextAlign.left,
                                                 style: AppStyle.txtBody)),
                                         Padding(
                                             padding: getPadding(
                                                 left: 14, top: 1),
                                             child: Text(
                                                 "lbl_completed".tr,
                                                 overflow:
                                                 TextOverflow.ellipsis,
                                                 textAlign: TextAlign.left,
                                                 style:
                                                 AppStyle.txtCallout))
                                        ]))
                                   ]))),
                       SizedBox(
                           width: double.maxFinite,
                           child: Container(
                               margin: getMargin(top: 8),
                               padding: getPadding(
                                   left: 16, top: 15, right: 16, bottom: 15),
                               decoration: AppDecoration.white.copyWith(
                                   borderRadius:
                                   BorderRadiusStyle.roundedBorder8),
                               child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   crossAxisAlignment:
                                   CrossAxisAlignment.start,
                                   mainAxisAlignment:
                                   MainAxisAlignment.start,
                                   children: [
                                    Text("lbl_items".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtHeadline),
                                    Padding(
                                        padding: getPadding(top: 15),
                                        child:  ListView.separated(
                                            physics:
                                            NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder:
                                                (context, index) {
                                              return SizedBox(
                                                  height:
                                                  getVerticalSize(16));
                                            },
                                            itemCount: orederItems
                                                .length,
                                            itemBuilder: (context, index) {
                                              OrderDetailsItemModel model =
                                              orederItems[index];
                                              return OrderDetailsItemWidget(
                                                  model);
                                            }))
                                   ]))),
                       SizedBox(
                           width: double.maxFinite,
                           child: Container(
                               width: double.maxFinite,
                               margin: getMargin(top: 8),
                               padding: getPadding(
                                   left: 16, top: 14, right: 16, bottom: 14),
                               decoration: AppDecoration.white.copyWith(
                                   borderRadius:
                                   BorderRadiusStyle.roundedBorder8),
                               child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   crossAxisAlignment:
                                   CrossAxisAlignment.start,
                                   mainAxisAlignment:
                                   MainAxisAlignment.center,
                                   children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text(
                                            "msg_customer_address2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeadline)),
                                    Padding(
                                        padding: getPadding(top: 13),
                                        child: Text(
                                            "msg_4140_parker_rd2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtBody))
                                   ]))),
                       SizedBox(
                           width: double.maxFinite,
                           child: Container(
                               margin: getMargin(top: 16),
                               padding: getPadding(all: 15),
                               decoration: AppDecoration.white.copyWith(
                                   borderRadius:
                                   BorderRadiusStyle.roundedBorder8),
                               child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   mainAxisAlignment:
                                   MainAxisAlignment.start,
                                   children: [
                                    Padding(
                                        padding: getPadding(left: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                             Text("lbl_total_amount".tr,
                                                 overflow:
                                                 TextOverflow.ellipsis,
                                                 textAlign: TextAlign.left,
                                                 style: AppStyle.txtBody),
                                             Text("lbl_40_00".tr,
                                                 overflow:
                                                 TextOverflow.ellipsis,
                                                 textAlign: TextAlign.left,
                                                 style: AppStyle.txtBody)
                                            ])),
                                    Padding(
                                        padding:
                                        getPadding(left: 1, top: 14),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                             Padding(
                                                 padding:
                                                 getPadding(top: 1),
                                                 child: Text(
                                                     "lbl_delivery_charge"
                                                         .tr,
                                                     overflow: TextOverflow
                                                         .ellipsis,
                                                     textAlign:
                                                     TextAlign.left,
                                                     style: AppStyle
                                                         .txtBody)),
                                             Padding(
                                                 padding:
                                                 getPadding(bottom: 1),
                                                 child: Text("lbl_5_00".tr,
                                                     overflow: TextOverflow
                                                         .ellipsis,
                                                     textAlign:
                                                     TextAlign.left,
                                                     style:
                                                     AppStyle.txtBody))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color:
                                            ColorConstant.blueGray100)),
                                    Padding(
                                        padding: getPadding(
                                            left: 1, top: 15, bottom: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                             Text("lbl_total".tr,
                                                 overflow:
                                                 TextOverflow.ellipsis,
                                                 textAlign: TextAlign.left,
                                                 style: AppStyle
                                                     .txtSFProDisplayBold20),
                                             Text("lbl_45_00".tr,
                                                 overflow:
                                                 TextOverflow.ellipsis,
                                                 textAlign: TextAlign.left,
                                                 style: AppStyle
                                                     .txtSFProDisplayBold20)
                                            ]))
                                   ])))
                      ]))))));
 }

 onTapArrowleft11() {
  Get.back();
 }
}







