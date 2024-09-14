import 'package:laundry_app/core/app_export.dart';

/// A controller class for the PaymentMethodScreen.
///
/// This class manages the state of the PaymentMethodScreen, including the
/// current paymentMethodModelObj
class PaymentMethodController extends GetxController {
 int currentPayment = 0;

  void setCurrentPaymetMethod(int index) {
    currentPayment = index;
    update();
  }

  // Rx<PaymentMethodModel> paymentMethodModelObj = PaymentMethodModel().obs;


}
