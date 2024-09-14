import '../iron_screen/models/iron_model.dart';
import '../iron_screen/models/product_item_model.dart';
import '../iron_screen/widgets/product_item_widget.dart';
import '../washing_screen/models/washing_item_model.dart';
import '../washing_screen/models/washing_model.dart';
import '../washing_screen/widgets/washing_item_widget.dart';
import 'controller/basket_controller.dart';
import 'models/basket_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_button.dart';
import 'package:laundry_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class BasketPage extends StatelessWidget {
  BasketPage({Key? key}) : super(key: key);

  BasketController controller = Get.put(BasketController(BasketModel().obs));
  List<WashingItemModel> washingServices = WashingModel.washingItemList();
  List<ProductItemModel> ironService = IronModel.productItemList();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillGray5001,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Padding(
                 padding: getPadding(bottom: 8),
                 child: Column(
                     mainAxisAlignment:
                     MainAxisAlignment.start,
                     children: [
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 170,
                                  top: 21,
                                  right: 170,
                                  bottom: 21),
                              decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                                  children: [
                                   Padding(
                                       padding: getPadding(
                                           top: 1),
                                       child: Text(
                                           "lbl_basket".tr,
                                           overflow:
                                           TextOverflow
                                               .ellipsis,
                                           textAlign:
                                           TextAlign
                                               .left,
                                           style: AppStyle
                                               .txtSFProDisplayBold28))
                                  ]))),

                     ])),
             Expanded(
               child: Container(
                 child: ListView(
                  children: [
                   SizedBox(
                       width: double.maxFinite,
                       child: Container(
                           margin: getMargin(top: 8),
                           padding: getPadding(top: 16,left: 16,right: 16,bottom: 8),
                           decoration: AppDecoration.white
                               .copyWith(
                               borderRadius:
                               BorderRadiusStyle
                                   .roundedBorder8),
                           child: Column(
                               mainAxisSize:
                               MainAxisSize.min,
                               mainAxisAlignment:
                               MainAxisAlignment.start,
                               children: [
                                Padding(
                                    padding: getPadding(
                                        right: 8),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .center,
                                        children: [
                                         CustomIconButton(
                                             height: 34,
                                             width: 34,
                                             shape: IconButtonShape
                                                 .CircleBorder17,
                                             child: CustomImageView(
                                                 svgPath:
                                                 ImageConstant.imgWashingmachine)),
                                         Padding(
                                             padding: getPadding(
                                                 left:
                                                 16,
                                                 top: 7,
                                                 bottom:
                                                 4),
                                             child: Text(
                                                 "lbl_washing"
                                                     .tr,
                                                 overflow:
                                                 TextOverflow
                                                     .ellipsis,
                                                 textAlign:
                                                 TextAlign
                                                     .left,
                                                 style: AppStyle
                                                     .txtHeadline)),
                                         Spacer(),
                                         Padding(
                                             padding: getPadding(
                                                 top: 6,
                                                 bottom:
                                                 7),
                                             child: Text(
                                                 "lbl_2_items"
                                                     .tr,
                                                 overflow:
                                                 TextOverflow
                                                     .ellipsis,
                                                 textAlign:
                                                 TextAlign
                                                     .left,
                                                 style: AppStyle
                                                     .txtBody))
                                        ])),


                                ListView.builder(primary: false,shrinkWrap: true,itemCount: 2,itemBuilder: (context, index) {
                                 WashingItemModel model = washingServices[index];
                                 return Padding(
                                   padding: getPadding(top:8,bottom: 8),
                                   child: WashingItemWidget(model),
                                 );
                                },),
                               ]))),
                   SizedBox(
                       width: double.maxFinite,
                       child:
                       Container(
                           margin: getMargin(top: 8),
                           padding: getPadding(
                               left: 16,
                               top: 10,
                               right: 16,
                               bottom: 2),
                           decoration: AppDecoration.white
                               .copyWith(
                               borderRadius:
                               BorderRadiusStyle
                                   .roundedBorder8),
                           child: Column(
                               mainAxisSize:
                               MainAxisSize.min,
                               mainAxisAlignment:
                               MainAxisAlignment.end,
                               children: [
                                Padding(
                                    padding: getPadding(
                                        top: 6, right: 2),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .center,
                                        children: [
                                         CustomIconButton(
                                             height: 34,
                                             width: 34,
                                             shape: IconButtonShape
                                                 .CircleBorder17,
                                             padding:
                                             IconButtonPadding
                                                 .PaddingAll8,
                                             child: CustomImageView(
                                                 svgPath:
                                                 ImageConstant.imgIron)),
                                         Padding(
                                             padding: getPadding(
                                                 left:
                                                 16,
                                                 top: 6,
                                                 bottom:
                                                 5),
                                             child: Text(
                                                 "lbl_iron"
                                                     .tr,
                                                 overflow:
                                                 TextOverflow
                                                     .ellipsis,
                                                 textAlign:
                                                 TextAlign
                                                     .left,
                                                 style: AppStyle
                                                     .txtHeadline)),
                                         Spacer(),
                                         Padding(
                                             padding: getPadding(
                                                 top: 7,
                                                 bottom:
                                                 6),
                                             child: Text(
                                                 "lbl_1_items"
                                                     .tr,
                                                 overflow:
                                                 TextOverflow
                                                     .ellipsis,
                                                 textAlign:
                                                 TextAlign
                                                     .left,
                                                 style: AppStyle
                                                     .txtBody))
                                        ])),
                                 ListView.builder(padding: getPadding(top: 8),primary: false,shrinkWrap: true,itemCount: 1,itemBuilder: (context, index) {

                                   ProductItemModel model = ironService[index];
                                   return Padding(
                                     padding: getPadding(top:8,bottom: 8),
                                     child: ProductItemWidget(model)
                                   );
                                 },),
                               ]))),
                   SizedBox(
                       width: double.maxFinite,
                       child: Container(
                           margin:
                           getMargin(top: 8, right: 2,bottom: 8),
                           padding: getPadding(
                               left: 14,
                               top: 15,
                               right: 14,
                               bottom: 15),
                           decoration: AppDecoration.white
                               .copyWith(
                               borderRadius:
                               BorderRadiusStyle
                                   .roundedBorder8),
                           child: Column(
                               mainAxisSize:
                               MainAxisSize.min,
                               mainAxisAlignment:
                               MainAxisAlignment.start,
                               children: [
                                Padding(
                                    padding: getPadding(
                                        left: 17,
                                        right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                         Text(
                                             "lbl_total_amount"
                                                 .tr,
                                             overflow:
                                             TextOverflow
                                                 .ellipsis,
                                             textAlign:
                                             TextAlign
                                                 .left,
                                             style: AppStyle
                                                 .txtBody),
                                         Text(
                                             "lbl_40_00"
                                                 .tr,
                                             overflow:
                                             TextOverflow
                                                 .ellipsis,
                                             textAlign:
                                             TextAlign
                                                 .left,
                                             style: AppStyle
                                                 .txtBody)
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 17,
                                        top: 14,
                                        right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                         Padding(
                                             padding:
                                             getPadding(
                                                 top:
                                                 1),
                                             child: Text(
                                                 "lbl_delivery_charge"
                                                     .tr,
                                                 overflow:
                                                 TextOverflow
                                                     .ellipsis,
                                                 textAlign:
                                                 TextAlign
                                                     .left,
                                                 style: AppStyle
                                                     .txtBody)),
                                         Padding(
                                             padding: getPadding(
                                                 bottom:
                                                 1),
                                             child: Text(
                                                 "lbl_5_00"
                                                     .tr,
                                                 overflow:
                                                 TextOverflow
                                                     .ellipsis,
                                                 textAlign:
                                                 TextAlign
                                                     .left,
                                                 style: AppStyle
                                                     .txtBody))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        top: 14),
                                    child: Divider(
                                        height:
                                        getVerticalSize(
                                            1),
                                        thickness:
                                        getVerticalSize(
                                            1),
                                        color: ColorConstant
                                            .blueGray100,
                                        indent:
                                        getHorizontalSize(
                                            18),
                                        endIndent:
                                        getHorizontalSize(
                                            11))),
                                Padding(
                                    padding: getPadding(
                                        left: 17,
                                        top: 15,
                                        right: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                         Padding(
                                             padding:
                                             getPadding(
                                                 top:
                                                 2),
                                             child: Text(
                                                 "lbl_total_payable"
                                                     .tr,
                                                 overflow:
                                                 TextOverflow
                                                     .ellipsis,
                                                 textAlign:
                                                 TextAlign
                                                     .left,
                                                 style: AppStyle
                                                     .txtSFProDisplayBold20)),
                                         Padding(
                                             padding: getPadding(
                                                 bottom:
                                                 2),
                                             child: Text(
                                                 "lbl_45_00"
                                                     .tr,
                                                 overflow:
                                                 TextOverflow
                                                     .ellipsis,
                                                 textAlign:
                                                 TextAlign
                                                     .left,
                                                 style: AppStyle
                                                     .txtSFProDisplayBold20))
                                        ])),
                                CustomButton(
                                    height:
                                    getVerticalSize(
                                        54),
                                    text: "lbl_continue2"
                                        .tr,
                                    margin: getMargin(
                                        top: 76,
                                        bottom: 16),
                                    onTap: () {
                                     onTapContinue();
                                    })
                               ])))
                  ],
                 ),
               ),
             )
            ]));
  }

  onTapContinue() {
    Get.toNamed(
      AppRoutes.scheduleAWashScreen,
    );
  }
}
