import '../controller/notification_controller.dart';
import '../models/listalarm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListalarmItemWidget extends StatelessWidget {
  ListalarmItemWidget(
    this.listalarmItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListalarmItemModel listalarmItemModelObj;

  NotificationController controler = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray200,
      child: Padding(
        padding: getPadding(top: 8,bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomIconButton(
                  height: 32,
                  width: 32,
                  margin: getMargin(
                    bottom: 19,
                  ),
                  variant: IconButtonVariant.FillGray100,
                  shape: IconButtonShape.CircleBorder17,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgAlarmBlack90032x32,
                  ),
                ),
                SizedBox(width: getHorizontalSize(12),),
                Container(
                  width: getSize(295),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        listalarmItemModelObj.title!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtHeadline,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child:Text(
                          listalarmItemModelObj.messege!,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtFootnote,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              listalarmItemModelObj.time!,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOutfitRegular14.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.14,
                  ),
                )
              ),
          ],
        ),
      ),
    );






  }
}
