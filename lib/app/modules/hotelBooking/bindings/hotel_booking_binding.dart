import 'package:get/get.dart';

import '../controllers/hotel_booking_controller.dart';

class HotelBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HotelBookingController>(
      () => HotelBookingController(),
    );
  }
}
