//ДЛЯ ОТОБРАЖЕНИЯ ПАНЕЛИ БИЛЕТОВ
import 'package:booking_tickets_practice/screens/ticket_view.dart';
import 'package:booking_tickets_practice/utils/app_info_list.dart';
import 'package:booking_tickets_practice/utils/styles.dart';
import 'package:booking_tickets_practice/widgets/Column_layout.dart';
import 'package:booking_tickets_practice/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/layout.dart';
import '../widgets/layout_buildrer_widget.dart';


class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20),horizontal: AppLayout.getHeight(20)),
            children: [

              /*
              ВЕРХНЯЯ ЧАСТЬ
              */

              Gap(AppLayout.getHeight(40)),
              Text("Билеты",style: Styles.headlineStyle1,),
              Gap(AppLayout.getHeight(20)),
              AppTicketTabs(firstTab: "Ближайшие Полеты", secondTab: "Прошлые Полеты"),
              Gap(AppLayout.getHeight(20)),

              /*
              ОТОБРАЖЕНИЕ АКТУАЛЬНОГО БИЛЕТА
              */

              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket:ticketList[0], isColor: true,), // ЗАДАЕМ ПАРАМЕТР ТРУ,ДЛЯ ДИНАМИЧЕСКОГО ИЗМЕНЕНИЯ ЦВЕТА
              ),
              SizedBox(height: 1,), // ЧТОБЫ СДЕЛАТЬ ОТСТУП С ЗАПОЛНЕННЫМ ЦВЕТОМ
              Container(
                padding: EdgeInsets.symmetric(horizontal:15,vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,

                /*
                ИНФА О РЕЙСЕ
                */

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          firstText: "Ivan Ivanov",
                          secondText: "Пассажир",
                          alignment: CrossAxisAlignment.start, isColor: false,
                        ),
                        ColumnLayout(
                          firstText: "1234 567890",
                          secondText: "Номер паспорта",
                            alignment: CrossAxisAlignment.end, isColor: false,
                        ),
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilderWidget(sections: 15, isColor:true,width: 5,),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          firstText: "7475 123 515686",
                          secondText: "Номер Билета",
                          alignment: CrossAxisAlignment.start, isColor: false,
                        ),
                        ColumnLayout(
                          firstText: "S2KL76",
                          secondText: "Код Брони",
                          alignment: CrossAxisAlignment.end, isColor: false,
                        ),
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilderWidget(sections: 15, isColor:true,width: 5,),
                    Gap(20),

                    /*
                    СПОСОБО ОПЛАТЫ
                    */

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/visa.png',scale: 10,),
                                Text("*** 4878",style: Styles.headlineStyle3,),
                              ],
                            ),
                            Gap(5),
                            Text("Метод Оплаты",style: Styles.headlineStyle4,),
                          ],
                        ),
                        ColumnLayout(
                          firstText: "84 493 ТГ",
                          secondText: "Стоимость Полета",
                          alignment: CrossAxisAlignment.end, isColor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(20)),

              /*
              ИМПОРТ БИЛЕТА
              */

              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket:ticketList[0], isColor: null,), // ЗАДАЕМ ПАРАМЕТР ТРУ,ДЛЯ ДИНАМИЧЕСКОГО ИЗМЕНЕНИЯ ЦВЕТА
              ),
            ],
          ),
        ],
      ),
    );
  }
}
