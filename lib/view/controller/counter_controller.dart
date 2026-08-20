import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt counter = 1.obs;
  incrementCounter(){
    counter.value++;
    print(counter.value);
  }
  RxDouble opacity = .4.obs;
  void setOpacity(double value){
    opacity.value = value;
  }
}