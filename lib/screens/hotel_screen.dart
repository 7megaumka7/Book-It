//ДЛЯ ОТОБРАЖЕНИЯ ЛИСТА ОТЕЛЕЙ
import 'package:booking_tickets_practice/utils/layout.dart';
import 'package:booking_tickets_practice/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel; // СОБИРАЕМ ИНФУ С ФАЙЛА app_info_list
  const HotelScreen({Key? key, required this.hotel/*ОБЗЯТАЕЛНЬНО ЭТО ПИШЕМ*/}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Hotel Price is ${hotel['price']}");
    final size = AppLayout.getSize(context); // ПОЛУЧЕНИЕ РАЗМЕРА ЭКРАНА
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: EdgeInsets.only(right: 15,top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Styles.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover, // ЗАПОЛНЕНИЕ ИЗОБРАЖЕНИЯ НА ВСЮ ШИРИНУ ЭКРАНА
                image: AssetImage("assets/images/${hotel['image']}"),)//ИМПОРТ ДАННЫХ МАР ИЗ ФАЙЛА app_info_lsit
              )
            ),
          Gap(10),
          Text(hotel['place'],style: Styles.headlineStyle2.copyWith(color:Styles.kakiColor)),//ИМПОРТ ДАННЫХ МАР ИЗ ФАЙЛА app_info_lsit
          Text(hotel['destination'],style: Styles.headlineStyle2.copyWith(color:Colors.white)),//ИМПОРТ ДАННЫХ МАР ИЗ ФАЙЛА app_info_lsit
          Text("${hotel['price']} ТГ / Ночь",style: Styles.headlineStyle2.copyWith(color:Styles.kakiColor)),//ИМПОРТ ДАННЫХ МАР ИЗ ФАЙЛА app_info_lsit
        ],
      ),
    );
  }
}
