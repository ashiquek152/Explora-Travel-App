import 'package:get/get.dart';

import '../controllers/location_details_controller.dart';

class LocationDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationDetailsController>(
      () => LocationDetailsController(),
    );
  }
}
