import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:image_picker/image_picker.dart';

class controller extends GetxController{
  RxInt counter = 1.obs;
  incrementCounter(){
    counter.value++;
    print(counter.value);
  }
  RxDouble opacity = .4.obs;
  void setOpacity(double value){
    opacity.value = value;
  }
  RxString name = 'Notification'.obs;
  RxBool notification = false.obs;
  void setnoti(bool value){
    notification.value = value;
  }

  RxList<String>  FruitsName = ['orange' ,
    'Banana',
    'Apple'
  ].obs;
  RxList temp = [].obs;
  RxString imagepath =''.obs;
  Future<void> getImage()async{
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);
    if(image !=null){
      imagepath.value = image.path;
    }
  }

  final email = TextEditingController().obs;
  final password = TextEditingController().obs;
  RxBool loading = false.obs;
  void loginApi()async{
    loading.value=true;
    try{
      Map newdata = {   // uploading Raw data
        'email':email.value.text,
        'password':password.value.text,
      };
      final response = await http.post(Uri.parse('https://reqres.in/api/login '),
          // body: {
          //   'email':email.value.text,
          //   'password':password.value.text,
          // }

        // ..... for raw data
        body: jsonEncode(newdata),
      );
      var data = jsonDecode(response.body.toString());
      // print(response.statusCode);
      if(response.statusCode==200){
        loading.value = false;
        Get.snackbar('Login Successful', data['error']);
      }else{
        loading.value = false;
        Get.snackbar('Login Failed', data['error']);
      }
    }catch(e){
      loading.value = false;
      Get.snackbar("Exception", e.toString());
    }
  }
}