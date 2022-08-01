import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';
import 'package:project_2/app/modules/widgets/text_field_customized.dart';


class Signup extends StatelessWidget {
  Signup({Key? key}) : super(key: key);

  final authController = Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 150.h),
                TextCustomized(
                  text: "EXPLORA",
                  textSize: 45.sp,
                  textColor: darkblue,
                  fontWeight: FontWeight.bold,
                ),
                TextCustomized(
                    text: "- IF NOT NOW, WHEN? -",
                    textSize: 16.sp,
                    textColor: darkblue),
                SizedBox(height: 50.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: TextFormFieldCustom(
                    fieldController: authController.signupUsernameController,
                    hintText: "Your Name",
                    usingPageName: "Signup",
                  ),
                ),
                 SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: TextFormFieldCustom(
                    fieldController: authController.signupEmailController,
                    hintText: "Email",
                    usingPageName: "Signup",
                  ),
                ),
               
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: TextFormFieldCustom(
                    fieldController: authController.signupPasswordController,
                    hintText: "Password",
                    usingPageName: "Signup",
                  ),
                ),
                SizedBox(height: 20.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: darkblue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                     Get.back();
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.h, vertical: 10.h),
                    child: TextCustomized(
                      text: "SIGN UP ",
                      textSize: 16.sp,
                      textColor: white, 
                    ),
                  ),
                ),
               
                SizedBox(height: 70.h),
                const Icon(Icons.keyboard_arrow_up_sharp, size: 60, color: darkblue)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
