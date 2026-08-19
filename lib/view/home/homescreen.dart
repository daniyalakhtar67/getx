import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        title: Text('HomeScreen',style: TextStyle(color: Colors.white)),
        centerTitle: true,
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
