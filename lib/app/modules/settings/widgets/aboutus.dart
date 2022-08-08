import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

class AboutusTile extends StatelessWidget {
  const AboutusTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: TextCustomized(
        text: "About us",
        textSize: 18.sp,
        textColor: darkblue,
      ),
      children: [
        GestureDetector(
          onTap: () {
            showAboutDialog(
                context: context,
                applicationName: "Explora",
                applicationIcon: Icon(
                  Icons.luggage,
                  color: darkblue,
                  size: 35.r,
                ),
                children: const [
                  TextCustomized(
                    text:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make versions of Lorem Ipsum",
                    textColor: darkblue,
                    textSize: 14,
                    maxlines: 15,
                  ),
                ]);
          },
          child: TextCustomized(
            maxlines: 6,
            text:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
            textSize: 14.sp,
            textColor: black45,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
