import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/basket_page/models/basket_model.dart';/// A controller class for the BasketPage.
///
/// This class manages the state of the BasketPage, including the
/// current basketModelObj
class BasketController extends GetxController {BasketController(this.basketModelObj);

Rx<BasketModel> basketModelObj;

 }
