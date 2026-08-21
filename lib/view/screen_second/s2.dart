import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/controller/counter_controller.dart';

class S2 extends StatefulWidget {
  const S2({super.key});

  @override
  State<S2> createState() => _S2State();
}

class _S2State extends State<S2> {
  final controller counterController = Get.put(controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
        centerTitle: true,
      ),
      body:Column(
        children: [
              Obx((){
                return Text(counterController.counter.toString());
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        counterController.incrementCounter();
      }),

    );
  }
}
