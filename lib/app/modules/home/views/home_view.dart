import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:project_2/app/common.widgets/colors.dart';
import 'package:project_2/app/common.widgets/text.customized.dart';
import 'package:project_2/app/modules/home/views/districts.list.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.h),
            child: TextCustomized(
              text: "Hello Ashique",
              textSize: 16.sp,
              textColor: black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      body:
      DistrictsList(),
      //  Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: SafeArea(
      //     child: SingleChildScrollView(
      //       child: Column(
      //         children:  [
      //           CupertinoSearchTextField(
      //             onTap: (){},
      //           ),
                
                
          
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
