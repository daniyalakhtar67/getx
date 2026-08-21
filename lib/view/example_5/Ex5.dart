import 'dart:io';
import 'package:flutter/material.dart';
import 'package:getx/view/controller/counter_controller.dart';
import 'package:get/get.dart';

class Ex5 extends StatefulWidget {
  const Ex5({super.key});

  @override
  State<Ex5> createState() => _Ex5State();
}

class _Ex5State extends State<Ex5> {
  controller con = Get.put(controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: con.imagepath.isNotEmpty?
                    FileImage(File(con.imagepath.value)):null,
              ),

            ),
            TextButton(onPressed: (){
              con.getImage();
            }, child: Text('Image')),
          ],
        );
      }),
    );
  }
}
