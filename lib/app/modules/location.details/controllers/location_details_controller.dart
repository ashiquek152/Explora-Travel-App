import 'package:get/get.dart';

class LocationDetailsController extends GetxController {
  //TODO: Implement LocationDetailsController

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;

  RxBool isFav = false.obs;

  addToFavourite()=>isFav.value=!isFav.value;
  
}
