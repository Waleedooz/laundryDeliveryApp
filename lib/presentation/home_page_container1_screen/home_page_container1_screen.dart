import 'package:flutter/services.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custum_bottom_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/presentation/basket_page/basket_page.dart';
import 'package:laundry_app/presentation/home_page_container_page/home_page_container_page.dart';
import 'package:laundry_app/presentation/my_order_page/my_order_page.dart';
import 'package:laundry_app/presentation/profile_page/profile_page.dart';
import 'package:laundry_app/widgets/custom_bottom_bar.dart';






class HomePageContainer1Screen extends StatefulWidget {
  const HomePageContainer1Screen({Key? key}) : super(key: key);

  @override
  State<HomePageContainer1Screen> createState() => _HomePageContainer1ScreenState();
}

class _HomePageContainer1ScreenState extends State<HomePageContainer1Screen> {

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor:ColorConstant.whiteA700,
          statusBarIconBrightness: Brightness.dark),
    );
    super.initState();
  }


  List<Widget> screen = [
    HomePageContainerPage(),
    MyOrderPage(),
    BasketPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomBottomBarController>(
      init: CustomBottomBarController(),
      builder: (controller) => WillPopScope(
        onWillPop: () async {
          if (controller.selectedIndex == 0) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                    insetPadding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding: EdgeInsets.zero,
                    content: Container(
                        width: getHorizontalSize(396),
                        padding:
                        getPadding(left: 0, top: 38, right: 0, bottom: 38),
                        decoration: AppDecoration.white.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Are you sure want to exit?".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadline,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 30,
                                top: 28,
                                right: 30,
                                bottom: 2,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child:  CustomButton(
                              onTap: (){
                            Get.back();
                            },
                                height:
                                getVerticalSize(
                                    46),
                                text: "lbl_no".tr,
                                margin: getMargin(
                                    right: 10),
                                variant: ButtonVariant
                                    .OutlineIndigoA200,
                                padding: ButtonPadding
                                    .PaddingAll12,
                                fontStyle: ButtonFontStyle
                                    .SFProDisplayBold18IndigoA200)
                                  ),
                                  SizedBox(
                                    width: getHorizontalSize(10),
                                  ),
                                  Expanded(
                                    child: CustomButton(
                                      onTap: () {
                                        if (controller.selectedIndex == 0) {
                                          closeApp();
                                        } else {
                                          controller.getIndex(0);
                                          Get.back();
                                        }
                                      },
                                      height: getVerticalSize(
                                        46,
                                      ),
                                      text: "lbl_yes".tr,
                                      margin: getMargin(
                                        left: 10,
                                      ),
                                      shape: ButtonShape.RoundedBorder8,
                                      padding: ButtonPadding.PaddingT2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )));
              },
            );
          } else {
            controller.getIndex(0);
            // Get.back();
          }
          return false;
        },
        child: SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
                backgroundColor: ColorConstant.whiteA700,
                body: screen[controller.selectedIndex],
                bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
                  Get.toNamed(getCurrentRoute(type), id: 1);
                }))),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePageContainerPage;
      case BottomBarEnum.MyOrder:
        return AppRoutes.myOrderPage;
      case BottomBarEnum.Basket:
        return AppRoutes.basketPage;
      case BottomBarEnum.User:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }
}







