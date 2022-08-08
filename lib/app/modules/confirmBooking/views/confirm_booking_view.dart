import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/bottom_navigation/views/bottom_navigation_view.dart';
import 'package:project_2/app/modules/confirmBooking/widgets/checkin_checkout.dart';
import 'package:project_2/app/modules/confirmBooking/widgets/payment_summary.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

import '../controllers/confirm_booking_controller.dart';

class ConfirmBookingView extends GetView<ConfirmBookingController> {
  ConfirmBookingView({Key? key}) : super(key: key);

  final confirmContrller = Get.put(ConfirmBookingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: darkblue,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Get.offAll(BottomNavigationView());
                  },
                  icon: Icon(
                    Icons.home_filled,
                    color: darkblue,
                    size: 35.r,
                  )),
            ),
          ],
          title: const TextCustomized(
            text: 'Confirm Booking',
            textColor: darkblue,
            fontWeight: FontWeight.bold,
            textSize: 22,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
              child: ListView(
            children: [
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/hotels/hotel1.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(width: 15.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                        child: TextCustomized(
                            text: 'Hotel Name',
                            textColor: darkblue,
                            textSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      TextCustomized(
                        text: 'Hotel Address:\n somthing something AahdkcgK',
                        textColor: black,
                        textSize: 14.sp,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.all(10),
                width: 400.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 233, 233, 233)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustomized(
                      text: 'Non-refundable',
                      textColor: black,
                      fontWeight: FontWeight.bold,
                      textSize: 14.sp,
                    ),
                    SizedBox(height: 7.h),
                    TextCustomized(
                      text:
                          'You can not refund the amount once you make payment',
                      textColor: black,
                      textSize: 14.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DateSelector(),
                    DateSelector(),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextCustomized(
                      text: 'Total guests',
                      textColor: darkblue,
                      fontWeight: FontWeight.bold,
                      textSize: 14.sp,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: IconButton(
                              onPressed: () {
                                confirmContrller.decrement();
                              },
                              icon: Icon(
                                Icons.minimize_rounded,
                                color: darkblue,
                              )),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: amber, width: 2)),
                          child: Center(
                            child: Obx(
                              () => TextCustomized(
                                text: confirmContrller.guestCount.value > 0
                                    ? confirmContrller.guestCount.value
                                        .toString()
                                    : "0",
                                textSize: 12,
                                textColor: darkblue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              confirmContrller.increment();
                            },
                            icon: Icon(
                              Icons.add,
                              color: darkblue,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Obx(
                () => Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextCustomized(
                        text: 'Total rooms',
                        textColor: darkblue,
                        fontWeight: FontWeight.bold,
                        textSize: 14.sp,
                      ),
                      TextCustomized(
                        text: '${confirmContrller.roomCount.value}',
                        textColor: darkblue,
                        fontWeight: FontWeight.bold,
                        textSize: 14.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              PaymentSummary()
            ],
          )),
        ));
  }
}
