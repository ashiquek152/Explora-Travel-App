import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

class InboxList extends StatelessWidget {
  const InboxList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
      return SizedBox(
          child: Card(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.w,vertical: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.copyright_rounded,
                    size: 35.r,
                    color: amber,
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextCustomized(
                          text: "Title",
                          textSize: 16,
                          textColor: darkblue,
                          fontWeight: FontWeight.bold,
                        ),
                        TextCustomized(
                            text:
                                "This has been the industry's standard dummy text ever since the 1500s and scrambled it to",
                            textSize: 13,
                            textColor: black45)
                      ],
                    ),
                  ),
                  const TextCustomized(
                      text: "7 Jan", textSize: 14, textColor: black45)
                ],
              ),
            ),
          ),
        );
    },);
  }
}