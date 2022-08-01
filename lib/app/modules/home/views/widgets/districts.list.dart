import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/home/controllers/home_controller.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

class DistrictsList extends StatelessWidget {
  DistrictsList({Key? key}) : super(key: key);

  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: _homeController.districtList.length,
        itemBuilder: (context, index, realIndex) {
          final districtName = _homeController.districtList[index];
          return Padding(
            padding:  EdgeInsets.only(top: 8.0.h, bottom: 8.0.h),
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color:grey,
                    blurRadius: 6.0,
                    blurStyle: BlurStyle.normal
                  ),
                ],
                color: white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: white,
                        image: DecorationImage(
                            image: index % 2 == 0
                                ? const AssetImage("assets/Auth Background.jpg")
                                : const AssetImage(
                                    "assets/Auth Background2.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Expanded(
                    flex: 1,
                    child: TextCustomized(
                      text: districtName,
                      textSize: 18.r,
                      textColor: darkblue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          );
        },
        options: CarouselOptions(
            height: 160.h,
            viewportFraction: 0.43,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 3),
            padEnds: true,
            enlargeCenterPage: true));
  }
}
