import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import '../notification_screen/widgets/listalarm_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/listalarm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';

import 'models/notification_model.dart';




class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
 NotificationController controller = Get.put(NotificationController());
 List<ListalarmItemModel> notificationData =  NotificationModel.listalarmItemList();
 @override
 void initState() {
  SystemChrome.setSystemUIOverlayStyle(
   SystemUiOverlayStyle(
       statusBarColor: ColorConstant.whiteA700,
       statusBarIconBrightness: Brightness.dark),
  );
  super.initState();
 }
 @override
 Widget build(BuildContext context) {
  return WillPopScope(
      onWillPop: () async {
       Get.back();
       return true;
      },
      child: ColorfulSafeArea(
          color: ColorConstant.whiteA700,
          child: Scaffold(
              backgroundColor: ColorConstant.gray5001,
              appBar: CustomAppBar(
                  height: getVerticalSize(79),
                  leadingWidth: 42,
                  leading: AppbarImage(
                      height: getVerticalSize(24),
                      width: getHorizontalSize(26),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 29, bottom: 26),
                      onTap: () {
                       onTapArrowleft20();
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_notifications".tr),
                  styleType: Style.bgFillWhiteA700),
              body: Container(
                  margin: getMargin(top: 8),
                  padding: getPadding(all: 16),
                  decoration: AppDecoration.white,
                  child: Column(
                    children: [
                      ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(8));
                          },
                          itemCount: notificationData.length,
                          itemBuilder: (context, index) {
                            ListalarmItemModel model = notificationData[index];
                            return ListalarmItemWidget(model);
                          }),
                    ],
                  )))));
 }

 onTapArrowleft20() {
  Get.back();
 }
}



