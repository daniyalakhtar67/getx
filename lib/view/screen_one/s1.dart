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
          Container(
            width: 200,
            height: 200,
            color:Colors.orange.withOpacity(counterController.opacity.value),

            ),
          Obx(()=>      Container(
            width: 200,
            height: 200,
            color:Colors.orange.withOpacity(counterController.opacity.value),

          ),
          ),
          Obx(()=>
              Slider(value: CounterController().opacity.value, onChanged: (value){
                CounterController().setOpacity(value);
              })
          )
        ],
      ),
    );
  }
}
