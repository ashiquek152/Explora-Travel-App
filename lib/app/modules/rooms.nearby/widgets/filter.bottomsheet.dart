import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/rooms.nearby/controllers/rooms_nearby_controller.dart';
import 'package:project_2/app/modules/rooms.nearby/widgets/filterchips.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

class FilterBottomSheet extends StatelessWidget {
  FilterBottomSheet({Key? key}) : super(key: key);

  final roomsNearByController = Get.put(RoomsNearbyController());

  @override
  Widget build(BuildContext context) {
    const sizedBox10 = SizedBox(height: 10);
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0.0, 16.w, 0.0),
      child: Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r))),
        child: ListView(
          shrinkWrap: true,
          children: [
            sizedBox10,
            TextCustomized(
              text: "Filter hotels",
              textSize: 18.sp,
              textColor: darkblue,
              fontWeight: FontWeight.bold,
            ),
            sizedBox10,
            TextCustomized(
              text: "Sort by",
              textSize: 14.sp,
              textColor: darkblue,
            ),
            sizedBox10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChipCustom(
                    visibility: false, onTap: () {}, text: "Nearest"),
                FilterChipCustom(
                    visibility: true, onTap: () {}, text: "Budget friendly"),
                FilterChipCustom(
                    visibility: false, onTap: () {}, text: "Luxuary"),
              ],
            ),
            SizedBox(height: 20),
            TextCustomized(
              text: "Operational",
              textSize: 14.sp,
              textColor: darkblue,
            ),
            sizedBox10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChipCustom(visibility: true, onTap: () {}, text: "Open"),
                FilterChipCustom(
                    visibility: false, onTap: () {}, text: "Closed"),
              ],
            ),
            SizedBox(height: 20),
            TextCustomized(
              text: "Distance",
              textSize: 14.sp,
              textColor: darkblue,
            ),
            sizedBox10,
            GetBuilder<RoomsNearbyController>(
              builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                              text: controller.currentDistance.toString(),
                              style: const TextStyle(color: amber)),
                          const TextSpan(
                              text: " km", style: TextStyle(color: darkblue)),
                        ],
                      ),
                    ),
                    Slider(
                      activeColor: amber,
                      thumbColor: darkblue,
                      divisions: 10,
                      label: controller.currentDistance.toString(),
                      mouseCursor: MouseCursor.uncontrolled,
                      value: controller.currentDistance,
                      onChanged: (value) {
                        controller.distanceFilter(value);
                      },
                      max: 5,
                      min: 1,
                    ),
                    SizedBox(height: 20),
                    TextCustomized(
                      text: "Budget",
                      textSize: 14.sp,
                      textColor: darkblue,
                    ),
                    sizedBox10,
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          const TextSpan(
                            text: " \$ ",
                            style: TextStyle(color: darkblue),
                          ),
                          TextSpan(
                            text: ((controller.currentAmount * 1000).round())
                                .toString(),
                            style: const TextStyle(color: amber),
                          ),
                        ],
                      ),
                    ),
                    Slider(
                      activeColor: amber,
                      thumbColor: darkblue,
                      divisions: 100,
                      label: ((controller.currentAmount * 1000).round())
                          .toString(),
                      mouseCursor: MouseCursor.uncontrolled,
                      value: controller.currentAmount,
                      onChanged: (value) {
                        controller.amountFilter(value);
                      },
                      max: 10,
                      min: 1,
                    )
                  ],
                );
              },
            ),
            TextCustomized(
              text: "Rating",
              textSize: 14.sp,
              textColor: darkblue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChipCustom(
                    visibility: true, onTap: () {}, text: "Below 4"),
                FilterChipCustom(
                    visibility: false, onTap: () {}, text: "4 to 6"),
                FilterChipCustom(
                    visibility: false, onTap: () {}, text: "6 to 10"),
              ],
            ),
            sizedBox10,
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(primary: darkblue),
              child: const TextCustomized(
                text: "Apply",
                textSize: 16,
                textColor: white,
                fontWeight: FontWeight.bold,
              ),
            ),
            sizedBox10,
          ],
        ),
      ),
    );
  }
}
