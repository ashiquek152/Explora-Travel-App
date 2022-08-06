import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/home/controllers/home_controller.dart';
import 'package:project_2/app/modules/location.details/views/location_details_view.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

class TourLocationByDistrict extends StatelessWidget {
  TourLocationByDistrict({Key? key}) : super(key: key);

  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: _homeController.districtList.length,
      itemBuilder: (context, index, realIndex) {
        final districtName = _homeController.districtList[index];
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 30.h, top: 10.h),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: const [
                    BoxShadow(
                      color: black45,
                      blurRadius: 2.0,
                    ),
                  ],
                  image: DecorationImage(
                    image: index % 2 == 0
                        ? const AssetImage("assets/Auth Background.jpg")
                        : const AssetImage("assets/kerala1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.0)))),
                      Expanded(
                        flex: 0,
                        child: TextCustomized(
                          text: districtName,
                          textSize: 18.r,
                          textColor: white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        flex: 0,
                        child: TextCustomized(
                          text:
                              "Lorem Ipsum is simply dummy text of the Lorem of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sincambled it to make a type recimen book. book.",
                          textSize: 14.r,
                          textColor: white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 280.h,
              left: 70.w,
              child: SizedBox(
                height: 60,
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: darkblue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r))),
                  child: TextCustomized(
                    text: "Explore",
                    textSize: 16.r,
                    textColor: white,
                    fontWeight: FontWeight.bold,
                  ),
                  onPressed: () {
                    Get.to(() => LocationDetailsView(
                          locationName: districtName,
                          image: index % 2 == 0
                              ? "assets/Auth Background.jpg"
                              : "assets/Auth Background2.jpg",
                        ));
                  },
                ),
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        height: 350.h,
        viewportFraction: 0.7,
        autoPlay: true,
        // autoPlayInterval: const Duration(seconds: 5),
        padEnds: true,
        enlargeCenterPage: true,
      ),
    );
  }
}






// Padding(
//       padding: const EdgeInsets.all(25.0),
//       child: CarouselSlider.builder(
//         options: CarouselOptions(
//           height:400,
//           viewportFraction: 0.7,
//           // autoPlay: true,
//           // autoPlayInterval: const Duration(seconds: 5),
//           padEnds: true,
//           enlargeCenterPage: true,
//         ),
//         itemCount: _homeController.districtList.length,
//         itemBuilder: (context, index, realIndex) {
//           final districtName = _homeController.districtList[index];
//           return SizedBox(
//             child: Stack(
//               fit: StackFit.expand,
//               children: [
//                 Image.asset('assets/Auth Background.jpg', fit: BoxFit.cover),
//                 ClipRRect(
//                   // Clip it cleanly.
//                   child: BackdropFilter(
//                     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//                     child: Container(
//                       color: Colors.grey.withOpacity(0.1),
//                       alignment: Alignment.center,
//                       child: Column(
//                         children: [
//                           const Expanded(flex: 1, child: SizedBox()),
//                           TextCustomized(
//                             text: districtName,
//                             textSize: 18.r,
//                             textColor: white,
//                           ),
//                           const SizedBox(height: 10),
//                           Expanded(
//                             flex: 1,
//                             child: TextCustomized(
//                               text:
//                                   "Lorem Ipsum is simply dummy text of the Lorem of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sincambled it to make a type recimen book. book.",
//                               textSize: 16.r,
//                               textColor: white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 300,
//                   left: 100,
//                   child: Container(
//                     color: red,
//                     height: 100,
//                     width: 100,
//                   ),
//                 )
//               ],
//             ),
//           );

          
//         },
//       ),
//     );