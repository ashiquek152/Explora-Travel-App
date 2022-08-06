import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:project_2/app/modules/home/views/widgets/districts.list.dart';
import 'package:project_2/app/modules/home/views/widgets/tour.location.dart';
import 'package:project_2/app/modules/select.location/views/select_location_view.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';
import 'package:project_2/app/modules/widgets/text_field_customized.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.1,
        automaticallyImplyLeading: false,
        title: const TextCustomized(
          text: "EXPLORA",
          textSize: 25,
          textColor: darkblue,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
            child: TextCustomized(
              text: "Hello Ashique",
              textSize: 16.r,
              textColor: darkblue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SafeArea(
          child: ListView(
            children: [
              TextCustomized(
                text: "Where do you want to go ?",
                textSize: 40.sp,
                textColor: darkblue,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 15.h),
              TextFormFieldCustom(
                fieldController: _homeController.searchCtrlr,
                hintText: "Search",
                usingPageName: "Home",
              ),
              SizedBox(height: 10.h),
              DistrictsList(),
              TourLocationByDistrict(),
            ],
          ),
        ),
      ),
    );
  }
}
