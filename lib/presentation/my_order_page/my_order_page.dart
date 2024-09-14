import '../my_order_page/widgets/orderdetails_item_widget.dart';
import 'controller/my_order_controller.dart';
import 'models/my_order_model.dart';
import 'models/orderdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyOrderPage extends StatelessWidget {
  MyOrderPage({Key? key}) : super(key: key);

  MyOrderController controller = Get.put(MyOrderController());
  List<OrderdetailsItemModel> myorderData = MyOrderModel.orderdetailsItemList();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillGray5001,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: double.maxFinite,
                        child: Container(
                            padding: getPadding(
                                left: 154,
                                top: 19,
                                right: 154,
                                bottom: 19),
                            decoration: AppDecoration.white,
                            child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 6),
                                      child: Text("lbl_my_order2".tr,
                                          overflow:
                                          TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtSFProDisplayBold28))
                                ]))),
                    Container(
                        height: getVerticalSize(693),
                        width: double.maxFinite,
                        margin: getMargin(top: 8, bottom: 4),
                        child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(689),
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                          color: ColorConstant
                                              .whiteA700))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 16, right: 18),
                                      child:  ListView.separated(
                                          physics:
                                          BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder:
                                              (context, index) {
                                            return SizedBox(
                                                height:
                                                getVerticalSize(
                                                    16));
                                          },
                                          itemCount: myorderData
                                              .length,
                                          itemBuilder:
                                              (context, index) {
                                            OrderdetailsItemModel
                                            model = myorderData[index];
                                            return OrderdetailsItemWidget(
                                                model,
                                                onTapPending: () {
                                                  onTapPending();
                                                });
                                          })))
                            ]))
                  ])
            ]));
  }

  onTapPending() {
    Get.toNamed(
      AppRoutes.orderDetailsScreen,
    );
  }
}
