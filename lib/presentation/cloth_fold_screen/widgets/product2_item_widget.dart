import '../../dry_clean_screen/models/product1_item_model.dart';
import '../controller/cloth_fold_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Product2ItemWidget extends StatelessWidget {
  Product2ItemWidget(
    this.product2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Product1ItemModel product2ItemModelObj;

  ClothFoldController clothFoldController = Get.put(ClothFoldController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClothFoldController>(
      init: ClothFoldController(),
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
                        image: DecorationImage(image: AssetImage(product2ItemModelObj.image!),fit: BoxFit.fill)),
                  ),
                  SizedBox(width: getHorizontalSize(24),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product2ItemModelObj.title!,
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
                                text: product2ItemModelObj.price,
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
                      controller.decreaseqty(product2ItemModelObj);
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
                      product2ItemModelObj.qty.toString(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBody,
                    ),
                  ),
                  CustomIconButton(
                    onTap: (){
                      controller.increaseqty(product2ItemModelObj);
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
