
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:project_2/app/modules/home/views/widgets/districts.list.dart';
import 'package:project_2/app/modules/home/views/widgets/tour.location.dart';
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
      // backgroundColor:red,
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
        padding:  EdgeInsets.fromLTRB(16.w, 0.0, 16.w, 0.0),
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 15.h),
              TextCustomized(
                textAlign: TextAlign.center,
                text: "\"Explore the beautiful world\"",
                textSize: 40.sp,
                textColor: darkblue,
                fontWeight: FontWeight.bold,
              ),
// 
// Text("\"Explore the beautiful world\"",style: TextStyle(
//   fontWeight: FontWeight.bold,
//   fontSize:40.sp,
//   background: Paint()
//   ..imageFilter =ImageFilter.blur(sigmaX: 1,sigmaY: 1)
//   ..strokeWidth =10.0
//   ..color =amber
//   ..style =PaintingStyle.stroke
//   ..strokeJoin =StrokeJoin.round
// ),),



// 

              SizedBox(height: 15.h),
              TextFormFieldCustom(
                fieldController: _homeController.searchCtrlr,
                hintText: "Search",
                usingPageName: "Home",
              ),
              SizedBox(height: 10.h),
              const TextCustomized(
                text: "Districts",
                textSize: 20,
                textColor: darkblue,
                fontWeight: FontWeight.bold,
              ),
              DistrictsList(),
              const TextCustomized(
                text: "Travel Places",
                textSize: 20,
                textColor: darkblue,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10.h),
              TourLocationByDistrict(),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
