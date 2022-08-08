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
    return Container(
      margin: const EdgeInsets.all(10),
      child: CarouselSlider.builder(
          itemCount: _homeController.districtList.length,
          itemBuilder: (context, index, realIndex) {
            final districtName = _homeController.districtList[index];
            return Padding(
              padding:  EdgeInsets.only(top: 8.0.h, bottom: 8.0.h),
              child: Container(
                width: 130,
                padding: EdgeInsets.all(10.r),
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
                              image:  
                                   AssetImage(index.isOdd? "assets/Auth Background.jpg":"assets/kerala1.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Expanded(
                      flex: 1,
                      child: TextCustomized(
                        text: districtName,
                        textSize: 14.sp,
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
              height: 150.h,
              viewportFraction: 0.35,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 3),
              padEnds: true,
              enlargeCenterPage: true)),
    );
  }
}
