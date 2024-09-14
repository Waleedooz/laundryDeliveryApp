import '../controller/washing_controller.dart';
import '../models/washing_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class WashingItemWidget extends StatelessWidget {
  WashingItemWidget(
    this.washingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WashingItemModel washingItemModelObj;
  WashingController washingController = Get.put(WashingController());


  @override
  Widget build(BuildContext context) {
    return GetBuilder<WashingController>(
      init: WashingController(),
      builder:(controller) =>  Container(
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
                    image: DecorationImage(image: AssetImage(washingItemModelObj.image!),fit: BoxFit.fill)),
                  ),
                  SizedBox(width: getHorizontalSize(24),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        washingItemModelObj.title!,
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
                                text: washingItemModelObj.price,
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

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomIconButton(
                    onTap: (){
                      controller.decreaseqty(washingItemModelObj);
                    },
                    height: 28,
                    width: 28,
                    margin: getMargin(
                      top: 40,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgMenu,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 42,
                      bottom: 5,
                    ),
                    child: Text(
                      washingItemModelObj.qty.toString(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBody,
                    ),
                  ),
                  CustomIconButton(
                    onTap: (){
                      controller.increaseqty(washingItemModelObj);
                    },
                    height: 28,
                    width: 28,
                    margin: getMargin(
                      left: 8,
                      top: 40,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgPlus,
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );

  }
}
