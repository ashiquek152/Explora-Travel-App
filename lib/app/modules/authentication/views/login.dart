import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:project_2/app/modules/bottom_navigation/views/bottom_navigation_view.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';
import 'package:project_2/app/modules/widgets/text_field_customized.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final authController = Get.put(AuthenticationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 150.h),
                Center(
                  child: TextCustomized(
                    text: "EXPLORA",
                    textSize: 45.r,
                    textColor: darkblue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextCustomized(
                    text: "- IF NOT NOW, WHEN? -",
                    textSize: 16.r,
                    textColor: darkblue),
                SizedBox(height: 50.h),
                SizedBox(
                  width: 250.w,
                  child: TextFormFieldCustom(
                    fieldController: authController.loginEmailController,
                    hintText: "Email",
                    usingPageName: "Login",
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 250.w,
                  child: TextFormFieldCustom(
                    fieldController: authController.loginPasswordController,
                    hintText: "Password",
                    usingPageName: "Login",
                  ),
                ),
                SizedBox(height: 40.h),
                Center(
                  child: SizedBox(
                    width: 180.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:darkblue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                         Get.to(()=>BottomNavigationView());
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10.h),
                        child: TextCustomized(
                          text: "LOGIN",
                          textSize: 16.r,
                          textColor: white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 120.w,vertical:5.h ),
                  child:  Divider(thickness: 2.h, color: darkblue),
                ),
                SizedBox(height: 30.h),
                TextCustomized(
                  text: "CREATE AN ACCOUNT",
                  textSize: 14.r,
                  textColor: grey,
                ),
                SizedBox(height: 100.h),
                const Icon(Icons.keyboard_arrow_up_sharp, size: 60, color: darkblue)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
