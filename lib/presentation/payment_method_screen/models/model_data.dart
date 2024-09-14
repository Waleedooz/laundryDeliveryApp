import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/presentation/payment_method_screen/models/payment_method_model.dart';

class PaymentMethodData{
  static List<PaymentMethodModel> getPaymentOption(){
    return [
      PaymentMethodModel(ImageConstant.imgPaypalIcon,"Paypal"),
      PaymentMethodModel(ImageConstant.imgVisaPay,"Visa"),
      PaymentMethodModel(ImageConstant.imgApplePay,"Apple pay"),
      PaymentMethodModel(ImageConstant.imgGooglePay,"Google pay"),
    ];
  }
}