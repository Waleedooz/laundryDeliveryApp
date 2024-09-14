import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import 'controller/schedule_a_wash_controller.dart';
import 'models/delivery_time_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';

import 'models/picup_time_model.dart';
import 'models/schedule_a_wash_model.dart';


class ScheduleAWashScreen extends StatefulWidget {
  const ScheduleAWashScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleAWashScreen> createState() => _ScheduleAWashScreenState();
}

class _ScheduleAWashScreenState extends State<ScheduleAWashScreen> {
  List<PickupTime> pickupTime = ScheduleAWashModel.getPickupTime();
  List<DeliveryTime> deliveryTime =  ScheduleAWashModel.getDeliveryTime();
 ScheduleAWashController scheduleAWashController = Get.put(ScheduleAWashController());
 List<DateTime?> _dates = [];
 List<String> day = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"];
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
  return  WillPopScope(
      onWillPop: () async {
       Get.back();
       return true;
      },
      child: ColorfulSafeArea(
          color: ColorConstant.whiteA700,
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(79),
                  leadingWidth: 42,
                  leading: AppbarImage(
                      height: getVerticalSize(24),
                      width: getHorizontalSize(26),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 29, bottom: 26),
                      onTap: () {
                       onTapArrowleft8();
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_schedule_a_wash".tr),
                  styleType: Style.bgFillWhiteA700),
              body: GetBuilder<ScheduleAWashController>(
                init: ScheduleAWashController(),
                builder:(controller) => SizedBox(
                    width: size.width,
                    child: SingleChildScrollView(
                        padding: getPadding(top: 25),
                        child: Padding(
                            padding: getPadding(left: 0, right: 0, bottom: 5),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                 Padding(
                                   padding: getPadding(left: 16,right: 16),
                                   child: Text("msg_select_a_pickup".tr,
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.left,
                                       style: AppStyle.txtSFProDisplayBold20),
                                 ),
                                  CalendarDatePicker2(
                                    config: CalendarDatePicker2Config(
                                        weekdayLabelTextStyle:
                                        AppStyle.txtSFProTextSemibold13,
                                        weekdayLabels: day,

                                        controlsTextStyle:
                                        AppStyle.txtSFProTextSemibold17,
                                        customModePickerIcon: CustomImageView(
                                            svgPath: ImageConstant.imglastMonth,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(6),
                                            margin:
                                            getMargin(left: 8, top: 4, bottom: 4)),
                                        lastMonthIcon: CustomImageView(
                                            svgPath: ImageConstant.imgPreviousMonth,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(6),
                                            margin:
                                            getMargin(left: 8, top: 4, bottom: 4)),
                                        nextMonthIcon: CustomImageView(
                                            svgPath: ImageConstant.imglastMonth,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(6),
                                            margin:
                                            getMargin(left: 8, top: 4, bottom: 4)),
                                        dayTextStyle:  TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(
                                            20,
                                          ),
                                          fontFamily: 'SF Pro Text',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        selectedDayHighlightColor:
                                        ColorConstant.primaryColor,
                                        selectedDayTextStyle:
                                        AppStyle.txtSFProDisplaySemibold20.copyWith(
                                            letterSpacing:
                                            getHorizontalSize(0.38))),
                                    value: _dates,
                                    onValueChanged: (dates) => _dates = dates,
                                  ),
                                 Padding(
                                     padding: getPadding(left: 16,right: 16),
                                     child: Text("lbl_select_a_time".tr,
                                         overflow: TextOverflow.ellipsis,
                                         textAlign: TextAlign.left,
                                         style: AppStyle.txtSFProDisplayBold20)),


                                  Padding(
                                      padding: getPadding( top: 11,left: 5,right: 5),
                                      child: Wrap(
                                          runSpacing: getVerticalSize(5),
                                          spacing: getHorizontalSize(5),
                                          children: List<Widget>.generate(pickupTime.length,
                                                  (index) {
                                                    PickupTime model =
                                                    pickupTime[index];
                                                return Padding(
                                                  padding: getPadding(left: 9.5,right: 9.5,top: 9,bottom: 9),
                                                  child: GestureDetector(
                                                    onTap: (){
                                                      controller.setCurrentPickupTime(index);
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(8)),
                                                      color: controller.currentPicupTime==index?ColorConstant.primaryColor:ColorConstant.primaryLight),
                                                      child: Padding(
                                                        padding: getPadding(left: 20,right: 20,top: 8,bottom: 8),
                                                        child: Text(model.time!,style:controller.currentPicupTime==index?AppStyle.txtSFProDisplayRegular14: AppStyle.txtSFProDisplayRegular14Black900,),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }))),

                                 Padding(
                                     padding: getPadding(top: 25,left: 16,right: 16),
                                     child: Text("msg_select_a_delivery".tr,
                                         overflow: TextOverflow.ellipsis,
                                         textAlign: TextAlign.left,
                                         style: AppStyle.txtSFProDisplayBold20)),
                                  CalendarDatePicker2(
                                    config: CalendarDatePicker2Config(
                                        weekdayLabelTextStyle:
                                        AppStyle.txtSFProTextSemibold13,
                                        weekdayLabels: day,

                                        controlsTextStyle:
                                        AppStyle.txtSFProTextSemibold17,
                                        customModePickerIcon: CustomImageView(
                                            svgPath: ImageConstant.imglastMonth,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(6),
                                            margin:
                                            getMargin(left: 8, top: 4, bottom: 4)),
                                        lastMonthIcon: CustomImageView(
                                            svgPath: ImageConstant.imgPreviousMonth,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(6),
                                            margin:
                                            getMargin(left: 8, top: 4, bottom: 4)),
                                        nextMonthIcon: CustomImageView(
                                            svgPath: ImageConstant.imglastMonth,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(6),
                                            margin:
                                            getMargin(left: 8, top: 4, bottom: 4)),
                                        dayTextStyle:  TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(
                                            20,
                                          ),
                                          fontFamily: 'SF Pro Text',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        selectedDayHighlightColor:
                                        ColorConstant.primaryColor,
                                        selectedDayTextStyle:
                                        AppStyle.txtSFProDisplaySemibold20.copyWith(
                                            letterSpacing:
                                            getHorizontalSize(0.38))),
                                    value: _dates,
                                    onValueChanged: (dates) => _dates = dates,
                                  ),
                                 Padding(
                                     padding: getPadding(left: 16,right: 16),
                                     child: Text("lbl_select_a_time".tr,
                                         overflow: TextOverflow.ellipsis,
                                         textAlign: TextAlign.left,
                                         style: AppStyle.txtSFProDisplayBold20)),
                                  Padding(
                                      padding: getPadding( top: 11,bottom: 32,left: 5,right: 5),
                                      child: Wrap(
                                          runSpacing: getVerticalSize(5),
                                          spacing: getHorizontalSize(5),
                                          children: List<Widget>.generate(deliveryTime.length,
                                                  (index) {
                                                    DeliveryTime model =
                                                    deliveryTime[index];
                                                return Padding(
                                                  padding: getPadding(left: 9.5,right: 9.5,top: 9,bottom: 9),
                                                  child: GestureDetector(
                                                    onTap: (){
                                                      controller.setCurrentDeliveryTime(index);
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(8)),
                                                          color: controller.currentDeliveryTime==index?ColorConstant.primaryColor:ColorConstant.primaryLight),
                                                      child: Padding(
                                                        padding: getPadding(left: 20,right: 20,top: 8,bottom: 8),
                                                        child: Text(model.time!,style:controller.currentDeliveryTime==index?AppStyle.txtSFProDisplayRegular14: AppStyle.txtSFProDisplayRegular14Black900,),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }))),
                                ])))),
              ),
              bottomNavigationBar: CustomButton(
                  height: getVerticalSize(54),
                  text: "lbl_continue".tr,
                  margin: getMargin(left: 16, right: 16, bottom: 40),
                  onTap: () {
                   onTapContinue();
                  }))));
 }

 onTapContinue() {
  Get.toNamed(
   AppRoutes.addressScreen,
  );
 }

 onTapArrowleft8() {
  Get.back();
 }
}





