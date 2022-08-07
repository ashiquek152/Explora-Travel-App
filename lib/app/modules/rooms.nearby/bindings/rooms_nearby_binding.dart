import 'package:get/get.dart';

import '../controllers/rooms_nearby_controller.dart';

class RoomsNearbyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoomsNearbyController>(
      () => RoomsNearbyController(),
    );
  }
}
