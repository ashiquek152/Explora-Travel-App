import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/favourites/widgets/favourites.locations.list.dart';
import 'package:project_2/app/modules/widgets/animated.button.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';
import 'package:project_2/app/modules/widgets/text_field_customized.dart';

import '../controllers/favourites_controller.dart';

class FavouritesView extends GetView<FavouritesController> {
  FavouritesView({Key? key}) : super(key: key);

  final favouritesController = Get.put(FavouritesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: white,
        elevation: 0.1,
        automaticallyImplyLeading: false,
        title: const TextCustomized(
          text: "Favourites",
          textSize: 20,
          textColor: darkblue,
          fontWeight:FontWeight.bold,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            const FavouriteLocationsList(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormFieldCustom(
                        fieldController:
                            favouritesController.savedTextfeildController,
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
