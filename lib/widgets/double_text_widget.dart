//stless
//ДЛЯ ИМПОРТА РАЗМЕРОВ ТЕКСТА
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String BigText;
  final String SmallText;
  const AppDoubleTextWidget({Key? key,required this.BigText,required this.SmallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(BigText, style: Styles.headlineStyle2),
        InkWell( // СДЕЛАТЬ НАДПИСЬ КЛИКАБЕЛЬНОЙ
            onTap:(){

            } ,
            child: Text(SmallText,style: Styles.textStyle.copyWith(color: Styles.primaryColor))),
      ],
    );
  }
}
