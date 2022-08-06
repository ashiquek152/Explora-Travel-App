import 'package:flutter/material.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

class CureentLoction extends StatelessWidget {
  const CureentLoction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextCustomized(
          text: "User Current",
          textSize: 20,
          textColor: white,
        ),
      ),
    );
  }
}
