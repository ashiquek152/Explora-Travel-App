import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoomsNearbyController extends GetxController {
  //TODO: Implement RoomsNearbyController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  final searchRoomsCtrl = TextEditingController();

  double currentDistance = 5;
  double currentAmount = 10;


  distanceFilter(value){
    currentDistance =value;
    update();
  }
  amountFilter(value){
    currentAmount = value;
    update();
  }


}
