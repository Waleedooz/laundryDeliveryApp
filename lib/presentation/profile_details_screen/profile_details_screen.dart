import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

import 'controller/profile_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/widgets/app_bar/appbar_image.dart';
import 'package:laundry_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:laundry_app/widgets/app_bar/custom_app_bar.dart';

class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  ProfileDetailsController controller = Get.put(ProfileDetailsController());

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
                          onTapArrowleft12();
                        }),
                    centerTitle: true,
                    title: AppbarSubtitle(text: "lbl_my_profile2".tr),
                    actions: [
                      AppbarImage(
                          height: getSize(24),
                          width: getSize(24),
                          svgPath: ImageConstant.imgTicket,
                          margin: getMargin(
                              left: 16, top: 29, right: 16, bottom: 26),
                          onTap: () {
                            onTapTicket();
                          })
                    ],
                    styleType: Style.bgFillWhiteA700),
                body: Container(
                    margin: getMargin(top: 8),
                    padding:
                        getPadding(left: 16, top: 40, right: 16, bottom: 40),
                    decoration: AppDecoration.white.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse240,
                              height: getSize(110),
                              width: getSize(110),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(55)),
                              alignment: Alignment.center),
                          SizedBox(
                            height: getVerticalSize(30),
                          ),
                          profileDetail(
                              ImageConstant.imgUser, "Name", "Ronald Richards"),
                          Padding(
                              padding: getPadding(top: 14, bottom: 16),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.gray200,
                                  endIndent: getHorizontalSize(22))),
                          profileDetail(ImageConstant.imgMail, "Email",
                              "ronaldrichards@gmail.com"),
                          Padding(
                              padding: getPadding(top: 14, bottom: 16),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.gray200,
                                  endIndent: getHorizontalSize(22))),
                          profileDetail(ImageConstant.imgCall, "Phone number",
                              "(219) 555-0114"),
                          Padding(
                              padding: getPadding(top: 14, bottom: 16),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.gray200,
                                  endIndent: getHorizontalSize(22))),
                        ])))));
  }

  Widget profileDetail(icon, title, value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: icon,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
          margin: getMargin(
            bottom: 30,
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtBodyGray600,
                ),
                Padding(
                  padding: getPadding(
                    top: 15,
                  ),
                  child: Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtBody,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  onTapArrowleft12() {
    Get.back();
  }

  onTapTicket() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}
