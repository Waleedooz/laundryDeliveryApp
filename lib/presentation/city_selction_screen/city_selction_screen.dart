import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import 'controller/city_selction_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_search_view.dart';

import 'models/city_data.dart';
import 'models/city_selction_model.dart';

class CitySelctionScreen extends StatefulWidget {
  const CitySelctionScreen({Key? key}) : super(key: key);

  @override
  State<CitySelctionScreen> createState() => _CitySelctionScreenState();
}

class _CitySelctionScreenState extends State<CitySelctionScreen> {
  CitySelctionController citySelctionController = Get.put(CitySelctionController());
  List<CitySelctionModel> cityData = CityData.getCityData();

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
                resizeToAvoidBottomInset: false,
                backgroundColor: ColorConstant.gray5001,
                body: GetBuilder<CitySelctionController>(
                  init: CitySelctionController(),
                  builder:(controller) =>  SizedBox(
                      width: double.maxFinite,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: double.maxFinite,
                                child: Container(
                                    padding: getPadding(
                                        left: 127,
                                        top: 19,
                                        right: 127,
                                        bottom: 19),
                                    decoration: AppDecoration.white,
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 6),
                                              child: Text("lbl_city_selection".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProDisplayBold28))
                                        ]))),
                            Expanded(
                              child: Container(
                                  margin: getMargin(top: 8),
                                  padding: getPadding(
                                      left: 16, top: 1, right: 16, bottom: 1),
                                  decoration: AppDecoration.white,
                                  child: ListView(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.start,
                                      children: [
                                        CustomSearchView(
                                          controller:
                                              controller.searchController,
                                          hintText: "lbl_search_here".tr,
                                          margin: getMargin(top: 14),
                                          prefix: Container(
                                              margin: getMargin(
                                                  left: 20,
                                                  top: 11,
                                                  right: 13,
                                                  bottom: 11),
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSearch)),
                                          prefixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(46)),
                                        ),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Text("lbl_popular_cities".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtHeadline)),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapColumnrectangle();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right: 8),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgRectangle586,
                                                                        height: getVerticalSize(
                                                                            86),
                                                                        width: getHorizontalSize(
                                                                            87),
                                                                        radius:
                                                                            BorderRadius.circular(getHorizontalSize(43))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                10,
                                                                            top:
                                                                                9),
                                                                        child: Text(
                                                                            "lbl_rochester"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtSubheadline))
                                                                  ])))),
                                                  Expanded(
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 8,
                                                              right: 8),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRectangle58686x87,
                                                                    height:
                                                                        getVerticalSize(
                                                                            86),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            87),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(43))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 5,
                                                                        top: 8),
                                                                    child: Text(
                                                                        "lbl_middletown"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSubheadline))
                                                              ]))),
                                                  Expanded(
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 8,
                                                              right: 8),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRectangle5861,
                                                                    height:
                                                                        getVerticalSize(
                                                                            86),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            87),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(43))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            20,
                                                                        top:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_albany"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSubheadline))
                                                              ]))),
                                                  Expanded(
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 8),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRectangle5862,
                                                                    height:
                                                                        getVerticalSize(
                                                                            86),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            87),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(43))),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                8),
                                                                    child: Text(
                                                                        "lbl_riverhead"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSubheadline))
                                                              ])))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Text("lbl_all_cities".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtHeadline)),
                                        ListView.builder(
                                          itemCount: cityData.length,
                                          primary: false,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            CitySelctionModel data =
                                                cityData[index];
                                            return GestureDetector(
                                              onTap: (){
                                                controller.setCurrentCity(index);
                                                PrefUtils.setIsSignIn(false);
                                                Get.toNamed(AppRoutes.homePageContainer1Screen);
                                              },
                                              child: Container(
                                                  width: getHorizontalSize(396),
                                                  margin: getMargin(top: 10),
                                                  padding: getPadding(
                                                      top: 11, bottom: 11),
                                                  decoration: AppDecoration
                                                      .txtOutlineGray200,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(data.city!,
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle.txtBody),
                                                     controller.currentCity==index? CustomImageView(
                                                        svgPath: ImageConstant.imgTickIcon,
                                                      ):SizedBox()
                                                    ],
                                                  )),
                                            );
                                          },
                                        )
                                      ])),
                            )
                          ])),
                ))));
  }

  onTapColumnrectangle() {
    Get.toNamed(
      AppRoutes.homePageContainer1Screen,
    );
  }
}
