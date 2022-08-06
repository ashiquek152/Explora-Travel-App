
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/favourites/controllers/favourites_controller.dart';
import 'package:project_2/app/modules/widgets/colors.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {Key? key,
      required this.ontap,
      required this.content,
      required this.minWidth,
      required this.maxWidth,
      required this.minHeight,
      required this.maxHeight,
      required this.radius})
      : super(key: key);

  final VoidCallback ontap;
  final Widget content;
  final double minWidth;
  final double maxWidth;
  final double minHeight;
  final double maxHeight;
  final double radius;

  final favouritesController = Get.put(FavouritesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: GetBuilder<FavouritesController>(builder: (context) {
        return Center(
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onHighlightChanged: (value) {
              favouritesController.ontapSearchButton(value);
            },
            onTap: () {
              ontap();
            },
            child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastLinearToSlowEaseIn,
                height: favouritesController.isTapped ? minHeight : maxHeight,
                width: favouritesController.isTapped ? minHeight : maxWidth,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(radius.r),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: black45,
                      blurRadius: 5,
                      offset: Offset(4, 2),
                    ),
                  ],
                ),
                child: content),
          ),
        );
      }),
    );
  }
}
