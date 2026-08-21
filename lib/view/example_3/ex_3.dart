import 'package:flutter/material.dart';
import 'package:getx/view/controller/counter_controller.dart';
import 'package:get/get.dart';
class Ex3 extends StatefulWidget {
  const Ex3({super.key});

  @override
  State<Ex3> createState() => _Ex3State();
}

class _Ex3State extends State<Ex3> {
  bool notfi = false;
  controller con = Get.put(controller());
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text('Notification'),
                // Switch(value:notfi , onChanged: (value){
                //   notfi = value;
                //   setState(() {
                //
                //   });
                // })
                Obx(()=>Text(con.name.value)),
                Obx(()=>Switch(value: con.notification.value, onChanged: (value){
                  con.setnoti(value);
                }))
              ],
            ),
          )
        ],
      ),
    );
  }
}
