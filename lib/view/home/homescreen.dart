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
        title: Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Getx Dialog Alert'),
              subtitle: Text('Getx dialog alert with getx'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are you sure you want to delete',
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  }, child:Text('Ok')),
                  cancel: TextButton(onPressed: (){
                  }, child: Text('cancel')),

                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Theme'),
              subtitle: Text('light & Dark'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue ,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          onTap:(){
                            Get.changeTheme(ThemeData.light());
                            Get.forceAppUpdate();
                            Get.back();
                          },
                          leading :  Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                        ),
                        ListTile(
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                            Get.forceAppUpdate();
                            Get.back();
                          },
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                        )
                      ],
                    ),
                  )
                );
              },
            ),
          ),
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
