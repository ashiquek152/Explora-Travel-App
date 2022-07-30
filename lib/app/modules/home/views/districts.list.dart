import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/common.widgets/colors.dart';
import 'package:project_2/app/common.widgets/text.customized.dart';
import 'package:project_2/app/modules/home/controllers/home_controller.dart';

class DistrictsList extends StatelessWidget {
  DistrictsList({Key? key}) : super(key: key);

  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey,
      margin: EdgeInsets.all(16.w),
      child: CarouselSlider.builder(
          itemCount: _homeController.districtList.length,
          itemBuilder: (context, index, realIndex) {
            final districtName = _homeController.districtList[index];
            return Container(
              // height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: index % 2 == 0
                      ? const AssetImage("assets/Auth Background.jpg")
                      : const AssetImage("assets/Auth Background2.jpg"),fit: BoxFit.fill
                ),
              ),
              child: TextCustomized(
                text: districtName,
                textSize: 16,
                textColor: red,
              ),
            );
          },
          options: CarouselOptions(
            height: 300,
            autoPlay: true,
            padEnds: true,
          )),
    );
  }
}
