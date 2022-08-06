import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:project_2/app/modules/favourites/views/favourites_view.dart';
import 'package:project_2/app/modules/home/views/home_view.dart';
import 'package:project_2/app/modules/notifications/views/notifications_view.dart';
import 'package:project_2/app/modules/settings/views/settings_view.dart';
import 'package:project_2/app/modules/widgets/colors.dart';

import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  BottomNavigationView({Key? key}) : super(key: key);

  // final int _currentPage = 0;
  final _pageController = PageController();
  final _bottomController = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(
      builder: (context) {
        return Scaffold(
          body: PageView(
          
            controller: _pageController,
            children:   [
              const HomeView(),
              FavouritesView(),
              const SettingsView(),
              const NotificationsView()
            ],
            onPageChanged: (index) {
              _bottomController.swithPageIndex(index);
            },
          ),
          bottomNavigationBar: BottomBar(
            selectedIndex: _bottomController.currentPage,
            onTap: (int index) {
              _pageController.jumpToPage(index);
              _bottomController.swithPageIndex(index);
            },
            items:  <BottomBarItem>[
               BottomBarItem(
                icon: Icon(Icons.home,size: 25.r,),
                title:  const Text('Home'),
                activeColor:darkblue,
              ),
               BottomBarItem(
                icon: Icon(Icons.favorite,size: 25.r),
                title: const Text('Favorites'),
                activeColor: Colors.red,
              ),
               BottomBarItem(
                icon: Icon(Icons.settings,size: 25.r),
                title: const Text('Settings'),
                activeColor: Colors.orange,
              ),
               BottomBarItem(
                icon: Icon(Icons.notifications,size: 25.r),
                title: const Text('Notifications'),
                activeColor:blue,
              ),
            ],
          ),
        );
      }
    );
  }
}
