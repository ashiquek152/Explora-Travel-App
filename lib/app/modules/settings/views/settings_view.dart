import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: white,
        elevation: 0.1,
        automaticallyImplyLeading: false,
        title: const TextCustomized(
          text: "Settings",
          textSize: 20,
          textColor: darkblue,
          fontWeight:FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SettingsTiles(
              text: "About us",
              ontap: () {},
            ),
            const Divider(),
            SettingsTiles(
              text: "Visit our website",
              ontap: () {},
            ),
            const Divider(),
            SettingsTiles(
              text: "Help center",
              ontap: () {},
            ),
            const Divider(),
            SettingsTiles(
              text: "Customer service",
              ontap: () {},
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

class SettingsTiles extends StatelessWidget {
  const SettingsTiles({Key? key, required this.text, required this.ontap})
      : super(key: key);
  final String text;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: const Icon(Icons.arrow_forward_ios_sharp),
      title: TextCustomized(
        text: text,
        textSize: 18.sp,
        textColor: darkblue,
        // fontFamily: "RobotoMono",
      ),
    );
  }
}
