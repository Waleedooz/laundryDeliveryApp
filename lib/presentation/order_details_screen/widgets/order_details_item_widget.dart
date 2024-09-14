import '../controller/order_details_controller.dart';
import '../models/order_details_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';

// ignore: must_be_immutable
class OrderDetailsItemWidget extends StatelessWidget {
  OrderDetailsItemWidget(
    this.orderDetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderDetailsItemModel orderDetailsItemModelObj;

  var controller = Get.find<OrderDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Padding(
        padding: getPadding(all: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: getSize(68),
                  width: getSize(68),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(8)),
                      image: DecorationImage(image: AssetImage(orderDetailsItemModelObj.image!),fit: BoxFit.fill)),
                ),
                SizedBox(width: getHorizontalSize(24),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderDetailsItemModelObj.title!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtHeadline,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 12,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: orderDetailsItemModelObj.price,
                              style: TextStyle(
                                color: ColorConstant.fromHex("#000000"),
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: "lbl".tr,
                              style: TextStyle(
                                color: ColorConstant.fromHex("#000000"),
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: "lbl_item".tr,
                              style: TextStyle(
                                color: ColorConstant.fromHex("#000000"),
                                fontSize: getFontSize(
                                  15,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                )
              ],
            ),

           

          ],
        ),
      ),
    );







  }
}
