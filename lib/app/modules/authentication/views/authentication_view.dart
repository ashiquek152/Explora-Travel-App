import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:project_2/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:project_2/app/modules/authentication/views/login.dart';
import 'package:project_2/app/modules/authentication/views/signup.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';


class AuthenticationView extends GetView<AuthenticationController> {
  const AuthenticationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: Image.asset(
                "assets/Auth Background2.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 60.h),
                        TextCustomized(
                          text: "EXPLORA",
                          textSize: 45.r,
                          textColor: darkblue,
                          fontWeight: FontWeight.bold,
                        ),
                        TextCustomized(
                            text: "- IF NOT NOW, WHEN? -",
                            textSize: 16.r,
                            textColor: darkblue),
                        SizedBox(height: 50.h),
                        SizedBox(
                          height: 30.h,

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: darkblue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {
                              Get.to(()=> Login());
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.h),
                              child: TextCustomized(
                                text: "LOGIN",
                                textSize: 18.r,
                                textColor: white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:10.h),
                        SizedBox(
                          height: 30.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: darkblue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {
                               Get.to(()=> Signup());
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.h),
                              child: TextCustomized(
                                text: "SIGN UP",
                                textSize: 18.r,
                                textColor: white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
