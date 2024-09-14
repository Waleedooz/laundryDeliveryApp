import '../controller/onboarding_one_controller.dart';
import '../models/sliderexperienc_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';

// ignore: must_be_immutable
class SliderexperiencItemWidget extends StatelessWidget {
  SliderexperiencItemWidget(
    this.sliderexperiencItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderexperiencItemModel sliderexperiencItemModelObj;

  var controller = Get.find<OnboardingOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: getHorizontalSize(
            327,
          ),
          child: Text(
            "msg_experience_the_difference".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtSFProDisplayBold28,
          ),
        ),
        Container(
          width: getHorizontalSize(
            311,
          ),
          margin: getMargin(
            left: 8,
            top: 18,
            right: 7,
          ),
          child: Text(
            "msg_revel_in_the_freshness".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtBody,
          ),
        ),
      ],
    );
  }
}
