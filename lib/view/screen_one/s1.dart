import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/route/routes_name.dart';
import 'package:getx/view/controller/counter_controller.dart';

class S1 extends StatefulWidget {
  const S1({super.key});

  @override
  State<S1> createState() => _S1State();
}

class _S1State extends State<S1> {
  CounterController counterController = Get.put(CounterController());
  double opacity = .4;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(()=> Container(
            width: 200,
            height: 200,
            color: Colors.orange.withOpacity(counterController.opacity.value),
          )),
          Obx(()=>Slider(value: counterController.opacity.value, onChanged: (value){
            counterController.setOpacity(value);
          }))
          // Center(
          //   child: Container(
          //     width: 200,
          //     height: 200,
          //     color:Colors.orange.withOpacity(opacity),
          //     ),
          // ),
          // Slider(value: opacity, onChanged: (value){
          //   // print(value);
          //   opacity = value;
          //   setState(() {
          //
          //   });
          // })

        ],
      ),
    );
  }
}
