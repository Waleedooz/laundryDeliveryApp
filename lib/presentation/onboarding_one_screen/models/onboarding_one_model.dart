import '../../../core/utils/image_constant.dart';
import 'sliderexperienc_item_model.dart';

/// This class defines the variables used in the [onboarding_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingOneModel {
  // Rx<List<SliderexperiencItemModel>> sliderexperiencItemList =
  //     Rx(List.generate(1, (index) => SliderexperiencItemModel()));
  static List<SliderexperiencItemModel> getOnboardingData() {
    return [
      SliderexperiencItemModel(
          ImageConstant.imgOnbording1st,
          "Experience the difference of professional laundry.",
          "Revel in the Freshness, Restored Brilliance, and Utmost Care for Your Garments."),
      SliderexperiencItemModel(
          ImageConstant.imgOnbording2nd,
          "Revitalize your wardrobe with our expert care.",
          "A Symphony of Cleanliness: Elevating the Art of Laundering to Extraordinary Heights."),
      SliderexperiencItemModel(
          ImageConstant.imgOnbording3rd,
          "We Care for Your Clothes, You Shine with Confidence.",
          "We Stand for Exquisite Clean: Discover a World Where Every Garment is Treated Like Royalty"),
    ];
  }
}
