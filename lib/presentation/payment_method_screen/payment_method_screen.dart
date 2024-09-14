import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import 'controller/payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';
import 'package:laundry_app/widgets/custom_button.dart';

import 'models/model_data.dart';
import 'models/payment_method_model.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  PaymentMethodController paymentMethodController =
      Get.put(PaymentMethodController());
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
                appBar: CustomAppBar(
                    height: getVerticalSize(79),
                    leadingWidth: 42,
                    leading: AppbarImage(
                        height: getVerticalSize(24),
                        width: getHorizontalSize(26),
                        svgPath: ImageConstant.imgArrowleft,
                        margin: getMargin(left: 16, top: 29, bottom: 26),
                        onTap: () {
                          onTapArrowleft10();
                        }),
                    centerTitle: true,
                    title: AppbarSubtitle(text: "lbl_payment_method".tr),
                    styleType: Style.bgFillWhiteA700),
                body: GetBuilder<PaymentMethodController>(
                  init: PaymentMethodController(),
                  builder:(controller) => SizedBox(
                      width: double.maxFinite,
                      child: Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 8),
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.white,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_payment_method".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSFProDisplayBold20),
                                ListView.builder(
                                  primary: false,
                                  shrinkWrap: true,
                                  itemCount: paymentData.length,
                                  itemBuilder: (context, index) {
                                    PaymentMethodModel data = paymentData[index];
                                    return Padding(
                                      padding: getPadding(top: 8, bottom: 8),
                                      child: GestureDetector(
                                        onTap: (){
                                          controller.setCurrentPaymetMethod(index);
                                        },
                                        child: Container(
                                          decoration: AppDecoration.fillGray50
                                              .copyWith(
                                                  borderRadius: BorderRadiusStyle
                                                      .roundedBorder16,
                                         border: Border.all(color: controller.currentPayment==index?ColorConstant.primaryColor:ColorConstant.gray50)
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
                                                    Text(data.title!,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle.txtHeadline)
                                                  ],
                                                ),
                                                CustomImageView(
                                                  svgPath: controller.currentPayment==index?ImageConstant.imgRadioSelected:ImageConstant.imgRadioUnSelected,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Spacer(),
                                CustomButton(
                                    height: getVerticalSize(54),
                                    text: "lbl_checkout".tr,
                                    margin: getMargin(bottom: 22),
                                    onTap: () {
                                      onTapCheckout();
                                    })
                              ]))),
                ))));
  }

  onTapCheckout() {
    Get.toNamed(
      AppRoutes.orderSuccesfulScreen,
    );
  }

  onTapArrowleft10() {
    Get.back();
  }
}
