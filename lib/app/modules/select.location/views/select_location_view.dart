import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:project_2/app/modules/select.location/widgets/google.map.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text_field_customized.dart';

import '../controllers/select_location_controller.dart';

class SelectLocationView extends GetView<SelectLocationController> {
  SelectLocationView({Key? key}) : super(key: key);

  final _selectLocationController = Get.put(SelectLocationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 35.h,
              color: darkblue,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextFormFieldCustom(
                    fieldController:
                        _selectLocationController.searchFieldController,
                    hintText: "Search here",
                    usingPageName: "Search",
                  ),
                ),
                SizedBox(width: 5.w),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: darkblue,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: white,
                    child: IconButton(
                        icon: const Icon(
                          Icons.location_on_outlined,
                          color: red,
                        ),
                        onPressed: () {
                          Get.to(  MapSample());
                        }),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
