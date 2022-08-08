import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/confirmBooking/controllers/confirm_booking_controller.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

class DateSelector extends StatelessWidget {
  DateSelector({Key? key}) : super(key: key);

  final confirmContrller = Get.put(ConfirmBookingController());
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2100));
      },
      child: Container(
        width: 100.w,
        height: 35.h,
        decoration: BoxDecoration(
            border: Border.all(color: darkblue, width: 2),
            borderRadius: BorderRadius.circular(20),
            color: darkblue.withOpacity(0.2)),
        child: Center(
          child: TextCustomized(
            text: '21-12-2022',
            textColor: darkblue,
            fontWeight: FontWeight.bold,
            textSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
