import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/rooms.nearby/views/rooms_nearby_view.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

import '../controllers/location_details_controller.dart';

class LocationDetailsView extends GetView<LocationDetailsController> {
  const LocationDetailsView(
      {Key? key, this.locationName = "Not available", this.image = ""})
      : super(key: key);

  final String locationName;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextCustomized(
                  text: " Kovalam",
                  textSize: 25.sp,
                  textColor: white,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: red,
                    ),
                    TextCustomized(
                      text: locationName,
                      textSize: 20.sp,
                      textColor: white,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios,
                size: 35.h,
                color: darkblue,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 0,
                child: Container(
                  height: 300.h,
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    color: white.withOpacity(0.9),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.r),
                      topLeft: Radius.circular(50.r),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 25.h),
                        Expanded(
                          flex: 0,
                          child: TextCustomized(
                            text: "About",
                            textAlign: TextAlign.start,
                            fontWeight: FontWeight.bold,
                            textSize: 32.r,
                            textColor: darkblue,
                          ),
                        ),
                        SizedBox(height: 25.h),
                        Expanded(
                          flex: 0,
                          child: Text(
                            "    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                            textAlign: TextAlign.start,
                            maxLines: 7,
                            style: TextStyle(
                              fontSize: 16.r,
                              color: darkblue,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Center(
                          child: SizedBox(
                            width: double.infinity,
                            height: 40.h,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: darkblue,
                              ),
                              onPressed: () {
                                Get.to( RoomsNearbyView());
                              },
                              child: TextCustomized(
                                text: "Look for rooms here",
                                textAlign: TextAlign.start,
                                fontWeight: FontWeight.bold,
                                textSize: 20.sp,
                                textColor: white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
