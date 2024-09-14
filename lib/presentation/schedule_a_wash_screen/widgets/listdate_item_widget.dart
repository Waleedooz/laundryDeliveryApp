import '../controller/schedule_a_wash_controller.dart';
import '../models/listdate_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';

// ignore: must_be_immutable
class ListdateItemWidget extends StatelessWidget {
  ListdateItemWidget(
    this.listdateItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListdateItemModel listdateItemModelObj;

  var controller = Get.find<ScheduleAWashController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => Text(
            listdateItemModelObj.dateTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtSFProDisplayRegular20.copyWith(
              letterSpacing: getHorizontalSize(
                0.38,
              ),
            ),
          ),
        ),
        Obx(
          () => Text(
            listdateItemModelObj.dateoneTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtSFProDisplayRegular20.copyWith(
              letterSpacing: getHorizontalSize(
                0.38,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Obx(
            () => Text(
              listdateItemModelObj.datetwoTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFProDisplayRegular20.copyWith(
                letterSpacing: getHorizontalSize(
                  0.38,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Obx(
            () => Text(
              listdateItemModelObj.datethreeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFProDisplayRegular20.copyWith(
                letterSpacing: getHorizontalSize(
                  0.38,
                ),
              ),
            ),
          ),
        ),
        Obx(
          () => Text(
            listdateItemModelObj.datefourTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtSFProDisplayRegular20.copyWith(
              letterSpacing: getHorizontalSize(
                0.38,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              listdateItemModelObj.datefiveTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFProDisplayRegular20.copyWith(
                letterSpacing: getHorizontalSize(
                  0.38,
                ),
              ),
            ),
          ),
        ),
        Obx(
          () => Text(
            listdateItemModelObj.datesixTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtSFProDisplayRegular20.copyWith(
              letterSpacing: getHorizontalSize(
                0.38,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
