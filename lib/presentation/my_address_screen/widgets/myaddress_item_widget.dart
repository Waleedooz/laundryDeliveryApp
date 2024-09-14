import '../../address_screen/models/address_item_model.dart';
import '../controller/my_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MyaddressItemWidget extends StatelessWidget {
  MyaddressItemWidget(
    this.myaddressItemModelObj, {
    Key? key,
    this.onTapImgOverflowmenu,
  }) : super(
          key: key,
        );

  AddressItemModel myaddressItemModelObj;

  var controller = Get.find<MyAddressController>();

  VoidCallback? onTapImgOverflowmenu;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Padding(
        padding: getPadding(all: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(
              children: [
                CustomIconButton(
                  height: 33,
                  width: 34,
                  margin: getMargin(
                    bottom: 42,
                  ),
                  variant: IconButtonVariant.FillGray50,
                  shape: IconButtonShape.CircleBorder17,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgLocation,
                  ),
                ),
                SizedBox(width: getHorizontalSize(16),),
                Container(
                  width: getSize(224),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myaddressItemModelObj.addressTitle!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtHeadline,
                      ),
                      Text(
                        "${myaddressItemModelObj.addressline1!} ${myaddressItemModelObj
                            .addressline2!} ${myaddressItemModelObj
                            .country} ${myaddressItemModelObj
                            .state} ${myaddressItemModelObj.city} ${myaddressItemModelObj
                            .pinCode}",
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBody,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomImageView(
              svgPath: ImageConstant.imgOverflowmenu,
              height: getSize(
                20,
              ),
              width: getSize(
                20,
              ),
              margin: getMargin(
                bottom: 56,
              ),
              onTap: () {
                onTapImgOverflowmenu?.call();
              },
            ),


          ],
        ),
      ),
    );






  }
}
