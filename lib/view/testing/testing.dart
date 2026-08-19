import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
        centerTitle: true,
      ),
      body:   Container(
        color: Colors.orange,
        // height: MediaQuery.of(context).size.height*1,
        height: Get.height * 1,
        child: Center(
          child: Text('Center'),
        ),
      ),
    );
  }
}
