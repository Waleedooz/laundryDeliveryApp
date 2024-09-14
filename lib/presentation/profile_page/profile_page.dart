import '../log_out_screen/log_out_screen.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';




class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillGray5001,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Container(
              padding: getPadding(
                left: 172,
                top: 22,
                right: 172,
                bottom: 22,
              ),
              decoration: AppDecoration.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_profile".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProDisplayBold28,
                  ),
                ],
              ),
            ),
          ),
        SizedBox(height: getVerticalSize(8),),
        Expanded(
          child: Container(
            decoration: AppDecoration.white,
            child: Padding(
              padding:getPadding(left: 16,right: 16),
              child: Column(
                children: [
                  SizedBox(height: getVerticalSize(40),),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse240,
                    height: getSize(
                      110,
                    ),
                    width: getSize(
                      110,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        55,
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.profileDetailsScreen);
                    },
                    child: Container(
                      margin: getMargin(
                        top: 40,
                      ),
                      padding: getPadding(
                        top: 15,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.outlineGray200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgUser,
                            height: getSize(
                              22,
                            ),
                            width: getSize(
                              22,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 3,
                            ),
                            child: Text(
                              "lbl_my_profile".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBody,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(
                              16,
                            ),
                            width: getSize(
                              16,
                            ),
                            margin: getMargin(
                              top: 3,
                              right: 2,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.myCardsScreen);
                    },
                    child: Container(
                      padding: getPadding(
                        top: 15,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.outlineGray200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgSave,
                            height: getSize(
                              22,
                            ),
                            width: getSize(
                              22,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 3,
                            ),
                            child: Text(
                              "lbl_my_cards".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBody,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(
                              16,
                            ),
                            width: getSize(
                              16,
                            ),
                            margin: getMargin(
                              top: 3,
                              right: 2,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.myAddressScreen);
                    },
                    child: Container(
                      padding: getPadding(
                        top: 15,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.outlineGray200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgSearchBlack90020x20,
                            height: getSize(
                              22,
                            ),
                            width: getSize(
                              22,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 3,
                            ),
                            child: Text(
                              "lbl_my_address".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBody,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(
                              16,
                            ),
                            width: getSize(
                              16,
                            ),
                            margin: getMargin(
                              top: 3,
                              right: 2,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.notificationScreen);
                    },
                    child: Container(
                      padding: getPadding(
                        top: 16,
                        bottom: 16,
                      ),
                      decoration: AppDecoration.outlineGray200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgAlarmBlack900,
                            height: getSize(
                              22,
                            ),
                            width: getSize(
                              22,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 1,
                            ),
                            child: Text(
                              "lbl_notification".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBody,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(
                              16,
                            ),
                            width: getSize(
                              16,
                            ),
                            margin: getMargin(
                              top: 3,
                              right: 2,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.privacyPolicyScreen);
                    },
                    child: Container(
                      padding: getPadding(
                        top: 15,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.outlineGray200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowdownBlack900,
                            height: getSize(
                              22,
                            ),
                            width: getSize(
                              22,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 3,
                            ),
                            child: Text(
                              "lbl_privacy_policy".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBody,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(
                              16,
                            ),
                            width: getSize(
                              16,
                            ),
                            margin: getMargin(
                              top: 3,
                              right: 2,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            insetPadding: EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            contentPadding: EdgeInsets.zero,
                            content: LogOutScreen(),
                          );
                        },
                      );
                    },
                    child: Container(
                      margin: getMargin(
                        bottom: 0,
                      ),
                      padding: getPadding(
                        top: 15,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.outlineGray200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgRefresh,
                            height: getSize(
                              22,
                            ),
                            width: getSize(
                              22,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 3,
                            ),
                            child: Text(
                              "lbl_log_out".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBody,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(
                              16,
                            ),
                            width: getSize(
                              16,
                            ),
                            margin: getMargin(
                              top: 3,
                              right: 2,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )

        ],
      ),
    );
  }
}



