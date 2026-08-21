import 'package:get/get.dart';

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
}