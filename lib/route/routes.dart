import 'package:get/get.dart';
import 'package:getx/route/routes_name.dart';
import 'package:getx/view/home/homescreen.dart';
import 'package:getx/view/screen_one/s1.dart';
import 'package:getx/view/screen_second/s2.dart';

class AppRoutes{
  static List <GetPage>approutes()=>[
    GetPage(name: RoutesName.HomeScreen, page: ()=>Homescreen()),
    GetPage(name: RoutesName.S1, page: ()=>S1()),
    GetPage(name: RoutesName.S2, page: ()=>S2()),
  ];
}