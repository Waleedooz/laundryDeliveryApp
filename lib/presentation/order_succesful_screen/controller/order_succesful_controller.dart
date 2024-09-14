import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/order_succesful_screen/models/order_succesful_model.dart';/// A controller class for the OrderSuccesfulScreen.
///
/// This class manages the state of the OrderSuccesfulScreen, including the
/// current orderSuccesfulModelObj
class OrderSuccesfulController extends GetxController {Rx<OrderSuccesfulModel> orderSuccesfulModelObj = OrderSuccesfulModel().obs;

 }
