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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('name'.tr),
            subtitle: Text('message'.tr),
          ),
          SizedBox(height: 50),
          Wrap(
            spacing: 8,
            alignment: WrapAlignment.center,
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en',"US"));
              }, child: Text('English')),
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ur','PK'));
              }, child: Text('Urdu')),
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('sd','PK'));
              }, child: Text('Sindhi'))
            ],
          ),
        ],
      )
    );
  }
}
