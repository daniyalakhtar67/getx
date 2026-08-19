import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/route/routes_name.dart';

class S1 extends StatefulWidget {
  const S1({super.key});

  @override
  State<S1> createState() => _S1State();
}

class _S1State extends State<S1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(onPressed: (){
            Get.toNamed(RoutesName.S2);
          }, child: Center(child: Text('Go to next Screen'))),
        ],
      ),
    );
  }
}
