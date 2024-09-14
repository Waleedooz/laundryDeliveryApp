import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/presentation/home_page_container_page/models/services_model.dart';
import 'sliderbanner_item_model.dart';
import 'gridclippathgro_item_model.dart';

/// This class defines the variables used in the [home_page_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageContainerModel {
  // Rx<List<SliderbannerItemModel>> sliderbannerItemList =
  //     Rx(List.generate(1, (index) => SliderbannerItemModel()));

  Rx<List<GridclippathgroItemModel>> gridclippathgroItemList =
      Rx(List.generate(4, (index) => GridclippathgroItemModel()));

  static List<SliderbannerItemModel> sliderbannerItemList(){
    return [
      SliderbannerItemModel(ImageConstant.imgSliderImage1st,"Get 50% discount onfirst wash"),
      SliderbannerItemModel(ImageConstant.imgSliderImage2nd,"Get 50% discount on first wash"),
      SliderbannerItemModel(ImageConstant.imgSliderImage1st,"Get 50% discount onfirst wash"),
    ];
  }

  static List<Services> serviceData(){
    return [
      Services(ImageConstant.imgwashingServiceBg,ImageConstant.imgWashing,"Washing","For casual and regular wears"),
      Services(ImageConstant.imgIronServiceBg,ImageConstant.imgIron,"Iron","For casual and regular wears"),
      Services(ImageConstant.imgDryCleanBg,ImageConstant.imgDryClean,"Dry clean","For casual and regular wears"),
      Services(ImageConstant.imgClothFoldBg,ImageConstant.imgClothfold,"Cloth fold","For casual and regular wears"),
    ];
  }
}
