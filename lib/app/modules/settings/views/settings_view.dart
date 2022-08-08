import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/settings/widgets/aboutus.dart';
import 'package:project_2/app/modules/settings/widgets/contact.dart';
import 'package:project_2/app/modules/settings/widgets/visit.our.website.dart';
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
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            AboutusTile(),
            Divider(),
            WebsiteVisitTile(),
            Divider(),
            ContactTile(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
