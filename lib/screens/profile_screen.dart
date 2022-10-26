//ДЛЯ ОТОБРАЖЕНИЯ ПРОФИЛЯ ПОЛЬЗОВАТЕЛЯ
import 'package:booking_tickets_practice/utils/layout.dart';
import 'package:booking_tickets_practice/utils/styles.dart';
import 'package:booking_tickets_practice/widgets/Column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(20),
            horizontal: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),

          /*
          ВЕРХНЯЯ ПАНЕЛЬ
          */

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getWidth(85),
                height: AppLayout.getHeight(85),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_1.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Бронируйте Билеты",
                    style: Styles.headlineStyle1,
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    "Астана",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: Color(0xFFFEf4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(5),
                        vertical: AppLayout.getHeight(5)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            // ИСПОЛЬЗУЕМ ДЛЯ ВСТАВКИ ИКОНКИ
                            shape: BoxShape.circle, // ФОРМА ИКОНКИ
                            color: Color(0xFF526799),
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                        Text(
                          "Премиум - статус",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                      onTap: () {},
                      child: Text(
                        "Редактировать",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300),
                      )),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Divider(
            // РАЗДЕЛИТЕЛЬ
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(10)),

          /*
          ПАНЕЛЬ ДОСТИЖЕНИЯ
          */

          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                ),
              ),
              Positioned(
                // КРУЖОЧЕК
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 20, color: Color(0xFF264CD2)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(20),
                    horizontal: AppLayout.getWidth(20)),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 25,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Вы получили новую награду!",
                            style: Styles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("У вас было 89 полетов в этом году",
                            style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                                  .withOpacity(0.9), // OPACITY - Непрозрачность
                              fontSize: 15,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),

          /*
          ОБЩАЯ СТАТИСТИКА
          */

          Text("Расстояние в полете"),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  "174151",
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(AppLayout.getHeight(20)),

                /*
                ДЕТАЛЬНАЯ СТАТИСТИКА
                */

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Количество километров",
                        style: Styles.headlineStyle4.copyWith(fontSize: 15)),
                    Text("26 Октября 2022",
                        style: Styles.headlineStyle4.copyWith(fontSize: 15)),
                  ],
                ),
                Gap(AppLayout.getHeight(5)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayout.getHeight(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                        firstText: "19 056",
                        secondText: "Километров получено",
                        alignment: CrossAxisAlignment.start,
                        isColor: true),
                    ColumnLayout(
                        firstText: "Air Astana",
                        secondText: "Получено от",
                        alignment: CrossAxisAlignment.end,
                        isColor: true),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                        firstText: "20",
                        secondText: "Километров Получено",
                        alignment: CrossAxisAlignment.start,
                        isColor: true),
                    ColumnLayout(
                        firstText: "Nike",
                        secondText: "Получено от",
                        alignment: CrossAxisAlignment.end,
                        isColor: true),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                        firstText: "52 045",
                        secondText: "Километров Получено",
                        alignment: CrossAxisAlignment.start,
                        isColor: true),
                    ColumnLayout(
                        firstText: "Kaspi",
                        secondText: "Получено от",
                        alignment: CrossAxisAlignment.end,
                        isColor: true),
                  ],
                ),
                Gap(AppLayout.getHeight(30)),

                /*
                ИНФА ПО КИЛОМЕТРАМ
                */

                InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text("Как получать километры?",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
