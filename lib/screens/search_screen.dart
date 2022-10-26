//ДЛЯ ПАНЕЛИ ПОИСКА
import 'package:booking_tickets_practice/widgets/icons_text.dart';
import 'package:booking_tickets_practice/utils/layout.dart';
import 'package:booking_tickets_practice/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import '../utils/styles.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [

          /*
          ВЕРХНЯЯ ЧАСТЬ
          */

          Gap(AppLayout.getHeight(40)),
          Text("Что Вы\nИщете?",style:Styles.headlineStyle1.copyWith(fontSize: AppLayout.getWidth(35))), // TEXT FIELD
          Gap(AppLayout.getHeight(20)),
         AppTicketTabs(firstTab: 'Билеты на самолет', secondTab: 'Отели',), // ИМПОРТ
          Gap(AppLayout.getHeight(25)),
          IconsText(icon: Icons.flight_takeoff_rounded, text: "Вылеты"),
          Gap(AppLayout.getHeight(20)),
          IconsText(icon: Icons.flight_land_rounded, text: "Прибытия"),
          Gap(AppLayout.getHeight(25)),

          /*
          ПОИСК БИЛЕТОВ
          */

    Container( // НАЙТИ БИЛЕТЫ
    padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(20),
        vertical: AppLayout.getHeight(15)),
    decoration: BoxDecoration(
    color: Color(0xD91130CE),
    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
    ),

      /*
      КНОПКА
      */

    child: Center(
        child: Text("Найти Билеты",style: Styles.textStyle.copyWith(color: Colors.white))),
          ),
          Gap(AppLayout.getHeight(40)),
          AppDoubleTextWidget(BigText: "Ближайшие Полеты", SmallText: "Подробнее..."), //ИМПОРТ РАЗМЕРА ТЕКСТОВ
          Gap(AppLayout.getHeight(15)),

          /*
          НИЖНИЕ ВИДЖЕТЫ
          */

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,// РАССТОЯНИЕ МЕЖДУ ВИДЖЕТАМИ
          children: [
            Container(
              height: AppLayout.getHeight(415),
              width: size.width * 0.5,
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: AppLayout.getHeight(200),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage ("assets/images/sit.jpg"),
                      ),
                    ),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Text("-20% Скидка на ранние бронирования! Не упусти свой шанс!",
                    style: Styles.headlineStyle2,textAlign: TextAlign.center,),
                ],
              ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container( // ЗЕЛЕНЫЙ ВИДЖЕТ
                      width: size.width * 0.41,
                      height: AppLayout.getHeight(200),
                      decoration: BoxDecoration(
                        color: Color(0xFF3AB8B8),
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                      ),
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text("Скидки за\nУчастие в Опросе",style: Styles.headlineStyle2.copyWith(fontWeight:FontWeight.bold).copyWith(color: Colors.white),textAlign: TextAlign.center,)),
                          Gap(AppLayout.getHeight(10)),
                          Text("Пройдите опрос о качестве наших услуг и получите скидки до -20%!",style: Styles.headlineStyle2.copyWith(fontWeight:FontWeight.w500).copyWith(color: Colors.white).copyWith(fontSize: 20)),
                        ],
                      ),
                    ),
                    Positioned( // ПОЗИЦИОНИРОВАНИЕ
                      right: -45,
                      top: -40,
                      child: Container( // СОЗДАНИЕ ТЕНИ КУРЖОЧКА
                      padding: EdgeInsets.all(AppLayout.getWidth(30)),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:Border.all(width: 20,color: Color(0xFF189999)),
                        color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(15)),
                Container( // КРАСНЫЙ ВИДЖЕТ
                  width: size.width * 0.40,
                  height: AppLayout.getHeight(200),
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(AppLayout.getHeight(20)),
                    color: Color(0xFFEC6545),
                    ),
                  child: Column(
                    children: [
                      Text("Поделись своей любовью",style: Styles.headlineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center/*ПОЗИЦИОНИРОВАНИЕ ТЕКСТА ПОСЕРЕДИНЕ*/,),
                      Gap(AppLayout.getHeight(5)),
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: "😍",
                            style: TextStyle(fontSize: 35),
                            ),
                          TextSpan(
                            text: "😘",
                            style: TextStyle(fontSize: 50),
                          ),
                          TextSpan(
                            text: "💘",
                            style: TextStyle(fontSize: 35),
                            ),
                          ]
                        ),
                      )
                    ],
                  ),
                  ),
                ],
              ),
            ],
          ),
        ]
      ),
    );
  }
}
