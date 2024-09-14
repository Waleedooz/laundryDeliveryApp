import '../cloth_fold_screen/cloth_fold_screen.dart';
import '../dry_clean_screen/dry_clean_screen.dart';
import '../home_page_container_page/widgets/sliderbanner_item_widget.dart';
import '../iron_screen/iron_screen.dart';
import '../washing_screen/washing_screen.dart';
import 'controller/home_page_container_controller.dart';
import 'models/home_page_container_model.dart';
import 'models/services_model.dart';
import 'models/sliderbanner_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/custom_icon_button.dart';

class HomePageContainerPage extends StatefulWidget {
  const HomePageContainerPage({Key? key}) : super(key: key);

  @override
  State<HomePageContainerPage> createState() => _HomePageContainerPageState();
}

class _HomePageContainerPageState extends State<HomePageContainerPage> {
  HomePageContainerController controller =
      Get.put(HomePageContainerController(HomePageContainerModel().obs));
  List<SliderbannerItemModel> sliderData =
      HomePageContainerModel.sliderbannerItemList();
  List<Services> serviceData = HomePageContainerModel.serviceData();
List serviceClass = [
  WashingScreen(),IronScreen(),DryCleanScreen(),ClothFoldScreen()
];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.gray5001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: ColorConstant.whiteA700,
            child: Padding(
              padding: getPadding(left: 16, right: 21, top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        height: getSize(20),
                        width: getSize(20),
                        svgPath: ImageConstant.imgSearchBlack900,
                      ),
                      AppbarSubtitle(
                          text: "lbl_new_york".tr, margin: getMargin(left: 12)),
                    ],
                  ),
                  CustomIconButton(
                      height: 40,
                      width: 40,
                      shape: IconButtonShape.CircleBorder20,
                      onTap: () {
                        onTapBtnAlarm();
                      },
                      child: CustomImageView(svgPath: ImageConstant.imgAlarm))
                ],
              ),
            ),
          ),
          Container(
            color: ColorConstant.whiteA700,
            child: Padding(
                padding: getPadding(left: 0, top: 0),
                child: Column(
                  children: [
                    CarouselSlider.builder(
                        options: CarouselOptions(
                            height: getVerticalSize(140),
                            initialPage: 0,
                            autoPlay: true,
                            viewportFraction: 0.72,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              controller.sliderIndex.value = index;
                            }),
                        itemCount: sliderData.length,
                        itemBuilder: (context, index, realIndex) {
                          SliderbannerItemModel model = sliderData[index];
                          return SliderbannerItemWidget(model);
                        }),
                    Obx(
                      () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(sliderData.length, (index) {
                            return AnimatedContainer(
                              margin: getMargin(
                                  left: 4, top: 16, bottom: 16, right: 4),
                              duration: const Duration(milliseconds: 300),
                              height: getVerticalSize(6),
                              width: getHorizontalSize(
                                  index == controller.sliderIndex.value
                                      ? 12
                                      : 6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(12)),
                                  color: (index == controller.sliderIndex.value)
                                      ? ColorConstant.black900
                                      : ColorConstant.black900
                                          .withOpacity(0.10)),
                            );
                          })),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: getSize(24),
          ),
          Padding(
            padding: getPadding(left: 16, right: 16),
            child: Text("lbl_services".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtHeadline),
          ),
          GridView.builder(
            itemCount: serviceData.length,
            padding: getPadding(all: 16),
            primary: false,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: getVerticalSize(179),
                crossAxisCount: 2,
                mainAxisSpacing: getHorizontalSize(16),
                crossAxisSpacing: getHorizontalSize(16)),
            itemBuilder: (context, index) {
              Services data = serviceData[index];
              return GestureDetector(
                onTap: (){
Get.to(serviceClass[index]);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                      image: DecorationImage(
                          image: AssetImage(data.bgImage!), fit: BoxFit.fill)),
                  child: Padding(
                    padding: getPadding(top: 16,left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorConstant.whiteA700,
                          ),
                          child: CustomImageView(
                            svgPath: data.icon!,
                            margin: getMargin(all: 16),
                          ),
                        ),
                        SizedBox(height: getVerticalSize(18),),
                        Text(
                          data.title!,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProDisplayBold16,
                        ),
                        SizedBox(height: getVerticalSize(6),),
                        Padding(
                          padding: getPadding(right: 52),
                          child: Text(
                            data.subtitle!,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtFootnote,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )

          // SizedBox(
          //     width: double.maxFinite,
          //     child: Container(
          //         padding: getPadding(top: 7, bottom: 16),
          //         decoration: AppDecoration.white,
          //         child: Column(
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             children: [
          //
          //

          //             ]))),
        ],
      ),
    );

  }

  onTapBtnAlarm() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }
}
