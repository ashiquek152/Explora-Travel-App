import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/confirmBooking/views/confirm_booking_view.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

import '../controllers/hotel_booking_controller.dart';

class HotelBookingView extends GetView<HotelBookingController> {
  const HotelBookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: darkblue,
                )),
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: TextCustomized(
                textSize: 22,
                text: 'Hotel Booking',
                textColor: darkblue,
                fontWeight: FontWeight.bold)),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SafeArea(
              child: ListView(
            children: [
              CarouselSlider(
                options: CarouselOptions(height: 250.h),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: 300.w,
                        decoration: BoxDecoration(
                            // color: darkblue,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/hotels/hotel${i + 1}.jpg"),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      );
                    },
                  );
                }).toList(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25.h),
                  Expanded(
                    flex: 0,
                    child: TextCustomized(
                      text: "Hotel Name",
                      textSize: 32.r,
                      textColor: darkblue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Expanded(
                      flex: 0,
                      child: TextCustomized(
                          text:
                              "    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                          textSize: 16.r,
                          maxlines: 6,
                          textColor: black)),
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: red,
                      ),
                      TextCustomized(
                        text: "Hotel Address",
                        textSize: 18.sp,
                        textColor: darkblue,
                      )
                    ],
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    width: double.infinity,
                    height: 40.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: darkblue,
                      ),
                      onPressed: () {
                        Get.to(ConfirmBookingView());
                      },
                      child: TextCustomized(
                        text: "Book Now",
                        textSize: 20.sp,
                        textColor: white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ));
  }
}
