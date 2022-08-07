import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/rooms.nearby/widgets/filter.bottomsheet.dart';
import 'package:project_2/app/modules/rooms.nearby/widgets/rooms.list.dart';
import 'package:project_2/app/modules/widgets/animated.button.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';
import 'package:project_2/app/modules/widgets/text_field_customized.dart';

import '../controllers/rooms_nearby_controller.dart';

class RoomsNearbyView extends GetView<RoomsNearbyController> {
  RoomsNearbyView({Key? key}) : super(key: key);

  final roomsNearByController = Get.put(RoomsNearbyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
            // size: 35.h,
            color: darkblue,
          ),
        ),
        centerTitle: true,
        backgroundColor: white,
        elevation: 0.1,
        automaticallyImplyLeading: false,
        title: const TextCustomized(
          text: "Rooms Nearby",
          textSize: 20,
          textColor: darkblue,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            const RoomsList(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.bottomSheet(
                          isScrollControlled: true,
                          useRootNavigator: true,
                          // isScrollControlled: true,
                          FilterBottomSheet());
                    },
                    icon: Icon(
                      CupertinoIcons.sort_up_circle,
                      color: darkblue,
                      size: 35.r,
                    ),
                  ),
                  Expanded(
                    child: TextFormFieldCustom(
                        fieldController: roomsNearByController.searchRoomsCtrl,
                        hintText: "Search here",
                        usingPageName: "SavedPlaces"),
                  ),
                  SizedBox(width: 5.w),
                  SizedBox(
                      height: 50.h,
                      width: 50.w,
                      child: RoundedButton(
                        content: Center(
                          child: Icon(
                            Icons.search,
                            color: darkblue,
                            size: 30.r,
                          ),
                        ),
                        ontap: () {
                          log("Hello");
                        },
                        radius: 25,
                        minWidth: 35.w,
                        maxWidth: 45.w,
                        minHeight: 35.h,
                        maxHeight: 40.h,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
