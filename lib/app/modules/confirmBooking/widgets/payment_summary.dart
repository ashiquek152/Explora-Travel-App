import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/confirmBooking/controllers/confirm_booking_controller.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

class PaymentSummary extends StatelessWidget {
  PaymentSummary({Key? key}) : super(key: key);

  final confirmBookingController = Get.put(ConfirmBookingController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.h,
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextCustomized(
            text: "Payment summary",
            textSize: 16.r,
            textColor: darkblue,
            fontWeight: FontWeight.bold,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     TextCustomized(
          //         text: "Subtotal",
          //         textSize: 14,
          //         textColor: black.withOpacity(0.7)),
          //     TextCustomized(
          //         text: "\$300",
          //         textSize: 14,
          //         textColor: darkblue),
          //   ],
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextCustomized(
                text: "Total payment",
                textSize: 14,
                textColor: black.withOpacity(0.7),
                fontWeight: FontWeight.bold,
              ),
              Obx(
                () => TextCustomized(
                  text: confirmBookingController.totalAMT.value.toString(),
                  textSize: 14,
                  textColor: darkblue,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: darkblue),
              onPressed: () {
                confirmBookingController.guestCount.value > 0
                    ? confirmBookingController.openCheckout()
                    : Get.snackbar("Minimum one guest is required", "");
              },
              child: const TextCustomized(
                text: "Proceed to payment",
                textSize: 14,
                textColor: white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
