import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
   int currentPage = 0;



  swithPageIndex(index){
    currentPage=index;
    update();
  }
  
}
