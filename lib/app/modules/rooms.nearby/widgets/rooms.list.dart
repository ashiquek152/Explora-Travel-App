import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/hotelBooking/views/hotel_booking_view.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

class RoomsList extends StatelessWidget {
  const RoomsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 50.h, 16.w, 0),
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                  onTap: ()=>Get.to(HotelBookingView()),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 90.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15.r),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/hotels/hotel${index + 1}.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextCustomized(
                              textAlign: TextAlign.start,
                              text: "Hotel Name",
                              textSize: 14.sp,
                              textColor: darkblue,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              width: 180.w,
                              child: TextCustomized(
                                textAlign: TextAlign.start,
                                text:
                                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer",
                                textSize: 12.sp,
                                textColor: black45,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                TextCustomized(
                                    textAlign: TextAlign.start,
                                    text: "4.5 km",
                                    textSize: 14,
                                    textColor: grey),
                                TextCustomized(
                                    textAlign: TextAlign.start,
                                    text: "7.6 🌟",
                                    textSize: 14,
                                    textColor: grey),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}