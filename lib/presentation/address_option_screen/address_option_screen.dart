import 'package:laundry_app/presentation/address_screen/models/address_item_model.dart';
import 'package:laundry_app/presentation/delete_address_screen/delete_address_screen.dart';
import 'package:laundry_app/presentation/edit_address_screen/edit_address_screen.dart';

import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';


// ignore: must_be_immutable
class AddressOptionScreen extends StatefulWidget {
   AddressOptionScreen({Key? key,required this.model}) : super(key: key);
  AddressItemModel model;
  @override
  State<AddressOptionScreen> createState() => _AddressOptionScreenState();
}

class _AddressOptionScreenState extends State<AddressOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(
            left: 18,
            right: 18,
            bottom: 41),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment:
            MainAxisAlignment.start,
            children: [
              SizedBox(height: getVerticalSize(44),),
              GestureDetector(
                  onTap: () {
                    onTapTxtEdit();
                  },
                  child: Text("lbl_edit".tr,
                      overflow: TextOverflow
                          .ellipsis,
                      textAlign:
                      TextAlign.left,
                      style: AppStyle
                          .txtHeadline)),
              Padding(
                  padding:
                  getPadding(top: 17),
                  child: Divider(
                      height:
                      getVerticalSize(
                          1),
                      thickness:
                      getVerticalSize(
                          1),
                      color: ColorConstant
                          .blueGray100)),
              GestureDetector(
                  onTap: () {
                    Get.back();
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          insetPadding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          contentPadding: EdgeInsets.zero,
                          content: DeleteAddressScreen(),
                        );
                      },
                    );


                    // onTapTxtDelete();
                  },
                  child: Padding(
                      padding: getPadding(
                          top: 17),
                      child: Text(
                          "lbl_delete".tr,
                          overflow:
                          TextOverflow
                              .ellipsis,
                          textAlign:
                          TextAlign
                              .left,
                          style: AppStyle
                              .txtHeadline)))
            ]));
  }

  onTapTxtEdit() {
    Get.back();
    Get.to(EditAddressScreen(model:widget.model));
  }

  onTapTxtDelete() {
    Get.toNamed(
      AppRoutes.deleteAddressScreen,
    );
  }
}


