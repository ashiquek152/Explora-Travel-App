import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/location.details/views/location_details_view.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

class FavouriteLocationsList extends StatelessWidget {
  const FavouriteLocationsList({Key? key}) : super(key: key);

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
          return GestureDetector(
            onTap: () {
              Get.to(()=>LocationDetailsView(
                image: index.isEven
                    ? "assets/Auth Background.jpg"
                    : "assets/kerala1.jpg",
              ));
            },
            child: Column(
              children: [
                Container(
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
                              image: AssetImage(index.isEven
                                  ? "assets/Auth Background.jpg"
                                  : "assets/kerala1.jpg"),
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
                              text: "Tourist spot name",
                              textSize: 14.sp,
                              textColor: darkblue,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              width: 180.w,
                              child: TextCustomized(
                                textAlign: TextAlign.start,
                                text: "Location details",
                                textSize: 12.sp,
                                textColor: black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: red,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
