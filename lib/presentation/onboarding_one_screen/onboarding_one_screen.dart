import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';
import 'controller/onboarding_one_controller.dart';
import 'models/onboarding_one_model.dart';
import 'models/sliderexperienc_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/custom_button.dart';

class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingOneScreen> createState() => _OnboardingOneScreenState();
}

class _OnboardingOneScreenState extends State<OnboardingOneScreen> {
  List<SliderexperiencItemModel> onboarding =
      OnboardingOneModel.getOnboardingData();
  PageController pageController = PageController();
  OnboardingOneController controller = Get.put(OnboardingOneController());

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
          closeApp();
          return false;
        },
        child: ColorfulSafeArea(
            color: ColorConstant.whiteA700,
            child: Scaffold(
                backgroundColor: ColorConstant.whiteA700,
                body: GetBuilder<OnboardingOneController>(
                  init: OnboardingOneController(),
                  builder: (controller) => Stack(
                    children: [
                      Container(
                        child: PageView.builder(
                          onPageChanged: (value) {
                            controller.setCurrentPage(value);
                          },
                          controller: pageController,
                          itemCount: onboarding.length,
                          itemBuilder: (context, index) {
                            SliderexperiencItemModel data = onboarding[index];
                            return Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          data.image!,
                                        ),
                                        fit: BoxFit.fill)),
                                child: Padding(
                                  padding: getPadding(top: 497),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: getPadding(left: 20,right: 20),
                                        child: SizedBox(

                                          child: Text(
                                            data.title!,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtSFProDisplayBold28,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(left: 32,right: 32),
                                        child: Container(

                                          margin: getMargin(
                                            top: 24,
                                          ),
                                          child: Text(
                                            data.subtitle!,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtBody,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ));
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(bottom: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                    List.generate(onboarding.length, (index) {
                                  return AnimatedContainer(
                                    margin: getMargin(left: 6, right: 6),
                                    duration: const Duration(milliseconds: 300),
                                    height: getSize(8),
                                    width: getSize(8),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (index == controller.currentPage)
                                            ? ColorConstant.primaryColor
                                            : ColorConstant.gray300),
                                  );
                                })),
                            CustomButton(
                                height: getVerticalSize(54),
                                text: controller.currentPage ==
                                        onboarding.length - 1
                                    ? "Get started"
                                    : "lbl_next".tr,
                                margin: getMargin(left: 20, top: 62, right: 20),
                                onTap: controller.currentPage ==
                                        onboarding.length - 1
                                    ? () {
                                        PrefUtils.setIsIntro(false);
                                        Get.toNamed(
                                          AppRoutes.logInScreen,
                                        );
                                      }
                                    : () {
                                        pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 100),
                                            curve: Curves.bounceIn);
                                      }),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtSkip();
                                },
                                child: Padding(
                                    padding: getPadding(top: 22, bottom: 5),
                                    child: Text(
                                        controller.currentPage ==
                                                onboarding.length - 1
                                            ? ""
                                            : "lbl_skip".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProDisplayBold15)))
                          ],
                        ),
                      )
                    ],
                  ),
                ))));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardingTwoScreen,
    );
  }

  onTapTxtSkip() {
    PrefUtils.setIsIntro(false);
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}

// class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
//   const OnboardingOneScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: ColorConstant.whiteA700,
//             body: Container(
//                 width: double.maxFinite,
//                 padding: getPadding(left: 6, top: 40, right: 6, bottom: 40),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                           height: getVerticalSize(417),
//                           width: getHorizontalSize(411),
//                           margin: getMargin(top: 25),
//                           padding: getPadding(
//                               left: 59, top: 19, right: 59, bottom: 19),
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: fs.Svg(ImageConstant.imgGroup34139),
//                                   fit: BoxFit.cover)),
//                           child: Stack(alignment: Alignment.topLeft, children: [
//                             Align(
//                                 alignment: Alignment.topRight,
//                                 child: Container(
//                                     height: getVerticalSize(316),
//                                     width: getHorizontalSize(245),
//                                     margin: getMargin(right: 4),
//                                     decoration: BoxDecoration(
//                                         color: ColorConstant.blue50,
//                                         borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(
//                                                 getHorizontalSize(6)),
//                                             topRight: Radius.circular(
//                                                 getHorizontalSize(41)),
//                                             bottomLeft: Radius.circular(
//                                                 getHorizontalSize(6)),
//                                             bottomRight: Radius.circular(
//                                                 getHorizontalSize(6)))))),
//                             CustomImageView(
//                                 imagePath: ImageConstant.imgRectangle4402,
//                                 height: getVerticalSize(308),
//                                 width: getHorizontalSize(254),
//                                 radius: BorderRadius.only(
//                                     topLeft:
//                                         Radius.circular(getHorizontalSize(16)),
//                                     topRight:
//                                         Radius.circular(getHorizontalSize(16)),
//                                     bottomLeft:
//                                         Radius.circular(getHorizontalSize(16))),
//                                 alignment: Alignment.topLeft,
//                                 margin: getMargin(top: 28))
//                           ])),
//                       Padding(
//                           padding: getPadding(left: 41, top: 12, right: 46),
//                           child: Obx(() => CarouselSlider.builder(
//                               options: CarouselOptions(
//                                   height: getVerticalSize(129),
//                                   initialPage: 0,
//                                   autoPlay: true,
//                                   viewportFraction: 1.0,
//                                   enableInfiniteScroll: false,
//                                   scrollDirection: Axis.horizontal,
//                                   onPageChanged: (index, reason) {
//                                     controller.sliderIndex.value = index;
//                                   }),
//                               itemCount: controller.onboardingOneModelObj.value
//                                   .sliderexperiencItemList.value.length,
//                               itemBuilder: (context, index, realIndex) {
//                                 SliderexperiencItemModel model = controller
//                                     .onboardingOneModelObj
//                                     .value
//                                     .sliderexperiencItemList
//                                     .value[index];
//                                 return SliderexperiencItemWidget(model);
//                               }))),
//                       Obx(() => Container(
//                           height: getVerticalSize(8),
//                           margin: getMargin(top: 39),
//                           child: AnimatedSmoothIndicator(
//                               activeIndex: controller.sliderIndex.value,
//                               count: controller.onboardingOneModelObj.value
//                                   .sliderexperiencItemList.value.length,
//                               axisDirection: Axis.horizontal,
//                               effect: ScrollingDotsEffect(
//                                   spacing: 12,
//                                   activeDotColor: ColorConstant.indigoA200,
//                                   dotColor: ColorConstant.gray300,
//                                   dotHeight: getVerticalSize(8),
//                                   dotWidth: getHorizontalSize(8))))),
//                       CustomButton(
//                           height: getVerticalSize(54),
//                           text: "lbl_next".tr,
//                           margin: getMargin(left: 9, top: 62, right: 9)),
//                       GestureDetector(
//                           onTap: () {
//                             onTapTxtSkip();
//                           },
//                           child: Padding(
//                               padding: getPadding(top: 31),
//                               child: Text("lbl_skip".tr,
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: AppStyle.txtSFProDisplayBold15)))
//                     ]))));
//   }
//
//
//   onTapTxtSkip() {
//     Get.toNamed(
//       AppRoutes.onboardingThreeScreen,
//     );
//   }
// }
