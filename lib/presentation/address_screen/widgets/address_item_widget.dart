import '../controller/address_controller.dart';
import '../models/address_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AddressItemWidget extends StatelessWidget {
  AddressItemWidget(this.addressItemModelObj,this.index, {
    Key? key,
  }) : super(
    key: key,
  );

  AddressItemModel addressItemModelObj;
  int index;
  AddressController addressController = Get.put(AddressController());

  // var controller = Get.find<AddressController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddressController>(
      init: AddressController(),
      builder:(controller) =>  GestureDetector(
        onTap: (){
          controller.setCurrentAddreddIndex(index);
        },
        child: Container(
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
                          addressItemModelObj.addressTitle!,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline,
                        ),
                        Text(
                          "${addressItemModelObj.addressline1!} ${addressItemModelObj
                              .addressline2!} ${addressItemModelObj
                              .country} ${addressItemModelObj
                              .state} ${addressItemModelObj.city} ${addressItemModelObj
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
                  svgPath: controller.currentAddress==index?ImageConstant.imgRadioSelected:ImageConstant.imgRadioUnSelected,
                )


              ],
            ),
          ),
        ),
      ),
    );


  }
}
