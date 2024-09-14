import 'package:flutter/services.dart';

import '../payment_method_screen/models/model_data.dart';
import '../payment_method_screen/models/payment_method_model.dart';
import 'controller/my_cards_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';



class MyCardsScreen extends StatefulWidget {
  const MyCardsScreen({Key? key}) : super(key: key);

  @override
  State<MyCardsScreen> createState() => _MyCardsScreenState();
}

class _MyCardsScreenState extends State<MyCardsScreen> {
 MyCardsController controller = Get.put(MyCardsController());
 List<PaymentMethodModel> paymentData = PaymentMethodData.getPaymentOption();
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
      child: SafeArea(
          // color: ColorConstant.whiteA700,
          child: Scaffold(
              resizeToAvoidBottomInset: false,
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
                       onTapArrowleft16();
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_my_cards".tr),
                  styleType: Style.bgFillWhiteA700),
              body: Padding(
                padding: getPadding(top: 10),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: getVerticalSize(16),),
                          Padding(
                            padding: getPadding(left: 16,right: 16),
                            child: Text("lbl_payment_method".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSFProDisplayBold20),
                          ),
                          ListView.builder(
                            padding: getPadding(top: 8,left: 16,right: 16),
                            primary: false,
                            shrinkWrap: true,
                            itemCount: paymentData.length,
                            itemBuilder: (context, index) {
                              PaymentMethodModel data = paymentData[index];
                              return Padding(
                                padding: getPadding(top: 8, bottom: 8),
                                child: Container(
                                  decoration: AppDecoration.fillGray50
                                      .copyWith(
                                    borderRadius: BorderRadiusStyle
                                        .roundedBorder16,
                                  ),
                                  child: Padding(
                                    padding: getPadding(
                                        left: 16,
                                        right: 16,
                                        top: 20,
                                        bottom: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                height: getSize(36),
                                                width: getSize(36),
                                                padding: getPadding(all: 6),
                                                decoration: AppDecoration
                                                    .white
                                                    .copyWith(
                                                    borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder16),
                                                child: CustomImageView(
                                                    svgPath: data.icon,
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    alignment:
                                                    Alignment.center)),
                                            SizedBox(width: getHorizontalSize(12),),
                                            Text(data.title!,
                                                overflow:
                                                TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtHeadline)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: getPadding(left: 16,right: 16),
                        child: CustomButton(
                            height: getVerticalSize(54),
                            text: "Add card".tr,
                            margin: getMargin(bottom: 22),
                            onTap: () {
                              onTapAddcard();
                            }),
                      )
                    ],
                  ),
                ),
              ),)));
 }
 onTapAddcard() {
  Get.toNamed(
   AppRoutes.addACardScreen,
  );
 }

 onTapArrowleft16() {
  Get.back();
 }
}



