import 'package:get/get.dart';

class ProductDetailsController extends GetxController{

  List<String> sizeList = ['6 UK', '7 UK', '8 UK', '9 UK', '10 UK'];

  int sizeIndex = 0;
  void setSizeIndex(int value){
    sizeIndex = value;
    update();
  }

  String size = '6 UK';
  void setSize(String value){
    size = value;
    update();
  }

}