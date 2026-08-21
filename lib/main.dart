import 'package:flutter/material.dart';
import 'package:getx/route/routes.dart';
import 'package:getx/route/routes_name.dart';
import 'package:getx/view/home/homescreen.dart';
import 'package:get/get.dart';
import 'package:getx/view/res/localization/lan.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      getPages: AppRoutes.approutes(),
      initialRoute: RoutesName.Ex5,
      translations: language(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
    );
  }
}

