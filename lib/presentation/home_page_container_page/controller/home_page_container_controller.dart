import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/home_page_container_page/models/home_page_container_model.dart';/// A controller class for the HomePageContainerPage.
///
/// This class manages the state of the HomePageContainerPage, including the
/// current homePageContainerModelObj
class HomePageContainerController extends GetxController {HomePageContainerController(this.homePageContainerModelObj);

Rx<HomePageContainerModel> homePageContainerModelObj;

Rx<int> sliderIndex = 0.obs;

 }
