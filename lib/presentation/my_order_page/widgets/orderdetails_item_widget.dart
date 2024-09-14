import '../controller/my_order_controller.dart';
import '../models/orderdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';

// ignore: must_be_immutable
class OrderdetailsItemWidget extends StatelessWidget {
  OrderdetailsItemWidget(
    this.orderdetailsItemModelObj, {
    Key? key,
    this.onTapPending,
  }) : super(
          key: key,
        );

  OrderdetailsItemModel orderdetailsItemModelObj;

  var controller = Get.find<MyOrderController>();

  VoidCallback? onTapPending;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapPending?.call();
      },
      child: Container(
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Padding(
          padding: getPadding(top: 16, bottom: 16, left: 15.88, right: 15.88),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orderdetailsItemModelObj.title!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtHeadline,
                  ),
                  SizedBox(
                    height: getVerticalSize(11),
                  ),
                  Row(
                    children: [
                      Text(
                        "Order No :- ${orderdetailsItemModelObj.orderNo!}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtFootnote,
                      ),
                      Container(
                        height: getVerticalSize(
                          14,
                        ),
                        width: getHorizontalSize(
                          1,
                        ),
                        margin: getMargin(
                          left: 7,
                          bottom: 1,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray400,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 7,
                        ),
                        child: Text(
                          orderdetailsItemModelObj.date!,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtFootnote,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: getSize(32),
                width: getSize(101),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                  border: Border.all(color:  orderdetailsItemModelObj.status!.toLowerCase() == "pending"
                      ? ColorConstant.amber700
                      : orderdetailsItemModelObj.status!.toLowerCase() ==
                      "cancelled"
                      ? ColorConstant.red
                      : ColorConstant.greenA700,)

                ),
                child: Center(
                  child: Text(
                    orderdetailsItemModelObj.status!,
                    style:
                        orderdetailsItemModelObj.status!.toLowerCase() == "pending"
                            ? AppStyle.txtSFProTextAmber700
                            : orderdetailsItemModelObj.status!.toLowerCase() ==
                                    "cancelled"
                                ? AppStyle.txtSFProTextRed
                                : AppStyle.txtSFProTextGreen700,
                  ),
                ),
              ),
              // CustomButton(
              //   height: getVerticalSize(
              //     32,
              //   ),
              //   width: getHorizontalSize(
              //     101,
              //   ),
              //   text: orderdetailsItemModelObj.status,
              //   variant: ButtonVariant.OutlineAmber700,
              //   shape: ButtonShape.RoundedBorder16,
              //   padding: ButtonPadding.PaddingAll8,
              //   fontStyle: ButtonFontStyle.SFProDisplaySemibold14Amber700,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
