import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final searchCtrlr =  TextEditingController();

List<String> districtList = [
    "Trivandrum",
    "Kollam",
    "Pathanamthitta",
    "Idukki",
    "Kottayam",
    "Alappuzha",
    "Ernakulam",
    "Thrichur",
    "Palakkad",
    "Malappuram",
    "Calicut",
    "Wayanad",
    "Kannur",
    "Kasargode",
  ];
  
  int index = 1;
  changeIndex(int newIdx){
    index=newIdx;
    update();
  }

}
