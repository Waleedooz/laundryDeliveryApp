import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';
import 'package:laundry_app/presentation/address_option_screen/address_option_screen.dart';

import '../address_screen/controller/address_controller.dart';
import '../address_screen/models/address_item_model.dart';
import '../my_address_screen/widgets/myaddress_item_widget.dart';
import 'controller/my_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';


class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({Key? key}) : super(key: key);

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
 MyAddressController myAddressController = Get.put(MyAddressController());
 AddressController controller = Get.put(AddressController());
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
                   onTapArrowleft17();
                  }),
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_my_address2".tr),
              styleType: Style.bgFillWhiteA700),
          body: SizedBox(
              width: double.maxFinite,
              child: Container(
                  width: double.maxFinite,
                  margin: getMargin(top: 8),
                  padding: getPadding(all: 16),
                  decoration: AppDecoration.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Expanded(
                           child: ListView.separated(
                               physics: BouncingScrollPhysics(),
                               shrinkWrap: true,
                               separatorBuilder: (context, index) {
                                 return SizedBox(
                                     height: getVerticalSize(16));
                               },
                               itemCount: controller.addressData.length,
                               itemBuilder: (context, index) {
                                 AddressItemModel model = controller.addressData[index];
                                 return MyaddressItemWidget(model,
                                     onTapImgOverflowmenu: () {
                                       showModalBottomSheet(context: context, builder: (context) {
                                         return AddressOptionScreen(model:controller.addressData[index]);
                                       },);
                                     });
                               })),
                       CustomButton(
                           height: getVerticalSize(54),
                           text: "lbl_add_address".tr,
                           margin: getMargin(top: 326, bottom: 5),
                           onTap: () {
                            onTapAddaddress();
                           })
                      ])))))
  );
 }


 // onTapImgOverflowmenu() {
 //
 //   showModalBottomSheet(context: context, builder: (context) {
 //     return AddressOptionScreen();
 //   },);


  // Get.toNamed(AppRoutes.addressOptionScreen);
 // }

 onTapAddaddress() {
  Get.toNamed(
   AppRoutes.addNewAddressScreen,
  );
 }

 onTapArrowleft17() {
  Get.back();
 }
}



