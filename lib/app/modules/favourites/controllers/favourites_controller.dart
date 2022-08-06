import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouritesController extends GetxController {

  final savedTextfeildController = TextEditingController();
  bool isTapped = false;


  // List <String> hotelsList =[
  //   ""
  // ];


  ontapSearchButton(value) {
    isTapped = value;
    update();
  }
}
