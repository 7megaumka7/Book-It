//stless
import 'package:booking_tickets_practice/screens/hotel_screen.dart';
import 'package:booking_tickets_practice/screens/ticket_view.dart';
import 'package:booking_tickets_practice/utils/app_info_list.dart';
import 'package:booking_tickets_practice/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,

      /*
ВЕРХНЯЯ ЧАСТЬ
      */

      body: ListView(
        // ЧТОБЫ СКРОЛЛИТЬ
        children: [
          Container(
              padding: EdgeInsets.only(left: 20, right: 20), // ВНЕШНИЕ ОТСТУПЫ
              child: Column(
                children: [
                  Gap(40),
                  // РАССТОЯНИЕ МЕЖДУ НАДПИСЯМИ, НУЖНО ПРОПИСАТЬ gap: ^2.0.0
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // ОТОДВИНУТЬ ЭЛЕМЕНТЫ К КРАЯМ
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // ВЫРОВНЯТЬ К НАЧАЛУ
                        children: [
                          Text(
                            "Доброе утро",
                            style: Styles.headlineStyle3,
                          ),
                          Gap(5),
                          // РАССТОЯНИЕ МЕЖДУ НАДПИСЯМИ, НУЖНО ПРОПИСАТЬ gap: ^2.0.0
                          Text("Бронируйте билеты",
                              style: Styles.headlineStyle1),
                        ],
                      ),

                      /*
                    ЛОГОТИП
                       */

                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              // РЕДАКТИРОВАНИЕ ИЗОБРАЖЕНИЙ
                              borderRadius:
                                  BorderRadius.circular(10), // ОКРУГЛЕНИЕ КРАЕВ
                              image: DecorationImage(
                                image: AssetImage("assets/images/img_1.png"),
                              ))),
                    ],
                  ),
                  Gap(25),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(10), // ОКРУГЛЕНИЕ ПОЛЕЙ
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical:
                            12), // ОТСТУП НА 12 ПО ГОРИЗОНТАЛИ И ВЕРТИКАЛИ
                    child: Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_search_regular,
                            color: Color(0xFF687daf)),
                        Text('Найти', style: Styles.headlineStyle4),
                      ],
                    ),
                  ),

                  /*
                  ПОЛЕТЫ
                   */

                  Gap(25),
                  AppDoubleTextWidget(
                      BigText: "Ближайшие Полеты", SmallText: "Подробнее..."),
                  //ИМПОРТ РАЗМЕРА ТЕКСТОВ
                ],
              )),
          Gap(15),
          SingleChildScrollView(
            //ЧТОБЫ СКРОЛЛИТЬ ОБЪЕКТЫ
            scrollDirection: Axis.horizontal, // ОСЬ СКРОЛЛИНГА
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((SingleTicket) => TicketView(
                        ticket: SingleTicket,
                        isColor: null,
                      )).toList(), //ИМПОРТ ДАННЫХ МАР ИЗ ФАЙЛА app_info_list
            ),
          ),
          Gap(15),

          /*
          ОТЕЛИ
          */

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(
                BigText: "Отели",
                SmallText: "Подробнее..."), //ИМПОРТ РАЗМЕРА ТЕКСТОВ
          ),
          Gap(15),
          SingleChildScrollView(
            //ЧТОБЫ СКРОЛЛИТЬ ОБЪЕКТЫ
            scrollDirection: Axis.horizontal, // ОСЬ СКРОЛЛИНГА
            padding: EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((singleHotel) => HotelScreen(hotel: singleHotel))
                    .toList()),
          ), // ИМПОРТ
        ],
      ),
    );
  }
}
