import 'package:get/get.dart';
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

}