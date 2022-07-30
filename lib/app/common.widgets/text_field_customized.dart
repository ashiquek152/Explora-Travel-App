import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_2/app/common.widgets/colors.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom({
    Key? key,
    required this.fieldController,
    required this.hintText,
    this.keyboardType = TextInputType.name,
    required this.usingPageName,
  }) : super(key: key);

  // final _authController = Get.put(AuthenticationController());
  final TextEditingController fieldController;
  final String hintText;
  final TextInputType keyboardType;
  final String usingPageName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        
        controller: fieldController,
        keyboardType: keyboardType,
        obscureText: hintText == "Password" || hintText == "Confirm password"
            ? true
            : false,
        // validator: (value) {
        //   if (usingPageName == "Signup") {
        //     return validatorSignup(value);
        //   } else {
        //     return validatorSignIn(value);
        //   }
        // },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: amber,
        decoration: InputDecoration(
          contentPadding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
          errorStyle: TextStyle(
            fontSize: 18.r,
            color: white.withOpacity(0.8),
            fontWeight: FontWeight.bold,
          ),
          hintText: hintText,
          fillColor: white,
          filled: true,
          hintStyle: TextStyle(
            fontSize: 14.h,
            color: Colors.grey.withOpacity(0.5),
          ),
          enabledBorder: textfieldBorderDecoration(),
          focusedBorder: textfieldBorderDecoration(),
          errorBorder: textfieldBorderDecoration(color: red),
          focusedErrorBorder: textfieldBorderDecoration(color: red),
        ),
      ),
    );
  }

  OutlineInputBorder textfieldBorderDecoration({color = amber}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide:  BorderSide(
        color: amber,
        width: 2.0.h,
      ),
    );
  }

//   validatorSignup(value) {
//     final signUpEmail = _authController.signUpEmailController.text.trim();
//     final signUpPassword = _authController.signUppasswordController.text.trim();
//     final confirmPassword = _authController.passConfirmController.text.trim();

//     if (hintText == "Password" || hintText == "Confirm password") {
//       if (value.length < 6) {
//         return "Password contain min 6 characters";
//       } else if (confirmPassword != signUpPassword) {
//         return "Password doesn't match";
//       }
//     }
//     if (hintText == "Username" && value.length < 4) {
//       return "Enter min 4 characters";
//     }
//     bool emailValid = RegExp(
//             r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//         .hasMatch(signUpEmail);
//     if (hintText == "Email" && !emailValid) {
//       return "Enter a valid email address";
//     }
//   }

//   validatorSignIn(value) {
//     final signInPassword = _authController.signInPasswordController.text;
//     final signInEmail = _authController.signInEmailController.text;
//     bool emailValid = RegExp(
//             r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//         .hasMatch(signInEmail);
//     if (hintText == "Password") {
//       log("THis is working");
//       if (signInPassword.isEmpty || value.length < 6) {
//         return "Password contain min 6 characters";
//       }
//     } else if (!emailValid) {
//       return "Enter a valid email address";
//     }
//   }
}
