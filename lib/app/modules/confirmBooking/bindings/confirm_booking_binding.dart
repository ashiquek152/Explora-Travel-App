import 'package:get/get.dart';

import '../controllers/confirm_booking_controller.dart';

class ConfirmBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmBookingController>(
      () => ConfirmBookingController(),
    );
  }
}
