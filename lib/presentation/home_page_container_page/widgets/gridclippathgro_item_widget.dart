import '../controller/home_page_container_controller.dart';
import '../models/gridclippathgro_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class GridclippathgroItemWidget extends StatelessWidget {
  GridclippathgroItemWidget(
    this.gridclippathgroItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GridclippathgroItemModel gridclippathgroItemModelObj;

  var controller = Get.find<HomePageContainerController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: ColorConstant.lightBlue50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Container(
        height: getVerticalSize(
          178,
        ),
        width: getHorizontalSize(
          190,
        ),
        decoration: AppDecoration.fillLightblue50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgClippathgroup,
              height: getVerticalSize(
                100,
              ),
              width: getHorizontalSize(
                190,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  16,
                ),
              ),
              alignment: Alignment.topCenter,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: getMargin(
                  left: 16,
                  top: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomIconButton(
                      height: 64,
                      width: 64,
                      variant: IconButtonVariant.White,
                      shape: IconButtonShape.CircleBorder32,
                      padding: IconButtonPadding.PaddingAll16,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgWashingmachine,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 18,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              gridclippathgroItemModelObj.washingTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFProDisplayBold16,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              119,
                            ),
                            margin: getMargin(
                              top: 4,
                            ),
                            child: Text(
                              "msg_for_casual_and_regular".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtFootnote,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
