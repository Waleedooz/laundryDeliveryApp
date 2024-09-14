import '../controller/home_page_container_controller.dart';
import '../models/sliderbanner_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';

// ignore: must_be_immutable
class SliderbannerItemWidget extends StatelessWidget {
  SliderbannerItemWidget(
    this.sliderbannerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderbannerItemModel sliderbannerItemModelObj;

  var controller = Get.find<HomePageContainerController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:getPadding(left: 8,right: 8),
      child: Container(
width: getSize(303),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getHorizontalSize(8)),
          image: DecorationImage(image: AssetImage(sliderbannerItemModelObj.image!),fit: BoxFit.fill)
        ),
child: Padding(
  padding: getPadding(left: 16),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
          Container(
      width: getSize(159)
      ,child: Text(sliderbannerItemModelObj.title!,style: AppStyle.txtHeadline,)),
      SizedBox(height: getVerticalSize(15.08),),
      Container(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Book Now",style: AppStyle.txtManropeSemiBold16),
              SizedBox(width: getHorizontalSize(2),),
              CustomImageView(
                height: getSize(15.08),
                width: getSize(14),
                svgPath: ImageConstant.imgRightArrow,
              )
            ],
          ),
        ),
      )
    ],
  ),
),

      ),
    );
  }
}
