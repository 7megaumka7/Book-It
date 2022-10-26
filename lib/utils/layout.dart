import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
// ПОЛУЧЕНИЕ РАЗМЕРОВ ЭКРАНА
class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size; // ПОЛУЧЕНИЕ РАЗМЕРА ЭКРАНА;
  }

  static getScreenHeight() {
    // ПОЛУЧЕНИЕ ВЫСОТЫ
    return Get.height;
  }
  static getScreenWidth() {
    // ПОЛУЧЕНИЕ ШИРИНЫ
    return Get.width;
  }
  static getHeight(double pixels) {
    //ФУНКЦИЯ ПОЛУЧЕНИЯ
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }
  static getWidth(double pixels) {
    //ФУНКЦИЯ ПОЛУЧЕНИЯ
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}