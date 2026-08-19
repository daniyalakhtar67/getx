import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/route/routes.dart';
import 'package:getx/route/routes_name.dart';
import 'package:getx/view/screen_one/s1.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Center(child: TextButton(onPressed: (){
           Get.toNamed(RoutesName.S1);
         }, child: Text('Go to next screen'))),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar('Daniyal', 'How are you',
        icon: Icon(Icons.add),
        );},
        child: Icon(Icons.add),
      ),
    );
  }
}
