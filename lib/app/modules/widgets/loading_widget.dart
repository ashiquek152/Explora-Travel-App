
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:project_2/app/modules/widgets/colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key,}) : super(key: key);
  // final int duration;
  @override
  Widget build(BuildContext context) {
    return  const Center(
      child:SpinKitPouringHourGlassRefined(
        // duration: Duration(seconds: duration),
                color: white,
                size: 50,
              ), 
    );
  }
}
