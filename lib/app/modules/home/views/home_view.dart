import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:project_2/app/modules/home/views/widgets/districts.list.dart';
import 'package:project_2/app/modules/home/views/widgets/tour.location.dart';
import 'package:project_2/app/modules/select.location/views/select_location_view.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: TextCustomized(
            text: "EXPLORA", textSize: 25.r, textColor: darkblue),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () => Get.to(() => SelectLocationView()),
                      label: const Text("Location"),
                      icon: const Icon(Icons.location_on_outlined),
                    ),
                  ),
                ],
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
