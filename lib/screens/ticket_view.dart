//ДЛЯ ОТОБРАЖЕНИЯ БИЛЕТА НА ГЛАВНОЙ СТРАНИЦЕ
import 'package:booking_tickets_practice/utils/styles.dart';
import 'package:booking_tickets_practice/widgets/Column_layout.dart';
import 'package:booking_tickets_practice/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../utils/layout.dart';
import '../widgets/layout_buildrer_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor; // ОПРЕДЕЛЕНИЕ ЦВЕТА
  const TicketView({Key? key,required this.ticket,required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context); // ИНТЕГРАЦИЯ С ДРУГИМ ФАЙЛОМ
    return SizedBox(// ЧТОБЫ У БИЛЕТОВ БЫЛ ОГРАНИЧЕНЫЙ  РАЗМЕР
    width: size.width*0.85, // НАСТРОЙКА ШИРИНЫ
     height: AppLayout.getHeight(170),// НАСТРОЙКА ВЫСОТЫ
      child:
      Container(
        margin: EdgeInsets.only(right:AppLayout.getHeight(15)),
        child: Column(
          children: [

            /*
            СИНЯЯ ЧАСТЬ БИЛЕТА
            */

            Container( // СИНЯЯ ЧАСТЬ БИЛЕТА
              decoration: BoxDecoration(
                color: isColor ==null? Color(0xFF526799):Colors.white, // ЕСЛИ ЗНАЧЕНИЕ 0,ТО СИНИЙ,ЕСЛИ 1,ТО БЕЛЫЙ
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20),
              ),
      ),
              padding: EdgeInsets.all(15),
              child:
              Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                         style: isColor == null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3,), // .copyWith - ЦВЕТ ТЕКСТА
                      Expanded(child: Container()), // ПРОБЕЛ
                      ThickContainter(isColor:true),// ИМПОРТ И ЗАДАЕМ ЗНАЧЕНИЕ ДЛЯ ДИНАМИЧЕСКОГО ИЗМЕНЕНИЯ ЦВЕТА
                      Expanded(child: Stack( // ОБЩЕЕ ХРАНИЛИЩЕ ЛОГО САМОЛЕТА
                        children: [
                          SizedBox(// ПРОБЕЛ
                          height: AppLayout.getHeight(25),
                          child: AppLayoutBuilderWidget(sections: 6, isColor:null,),
                        ),
                        Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.airplanemode_active_rounded,color:isColor==null? Colors.white:Color(0xFF8aCCF7),),))// ПОВОРОТ САМОЛЕТА
                        ],
                      )),
                      ThickContainter(isColor:true), // ИМПОРТ
                      Expanded(child: Container()) ,// ПРОБЕЛ
                      Text(ticket['to']['code'],style: isColor==null?Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3),
                    ],
                  ),
                Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(100), child: Text(ticket['from']['name'],style: isColor==null?Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4),
                      ),
                    Text(ticket['flying_time'], style: isColor==null?Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3),
                    SizedBox(width: AppLayout.getWidth(100), child: Text(ticket['to']['name'],textAlign: TextAlign.end,style: isColor==null?Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4)),
                    ],
                  )
                ],
              ),
            ),// СИНЯЯ ЧАСТЬ БИЛЕТА

            /*
            КРАСНАЯ ЧАСТЬ БЛИТЕА
            */

            Container( // КРАСНАЯ ЧАСТЬ БИЛЕТА
            color: isColor==null?Color(0xFFF37B67):Colors.white,
              child:
              Row(
                children: [
                  SizedBox(
                    height: 10,
                    width: 20,
                    child:
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null?Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(builder: (BuildContext , BoxConstraints constrains) {
  return Flex(
    direction: Axis.horizontal,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.max,
    children:
      List.generate((constrains.constrainWidth()/15).floor(),(index) => SizedBox(width:5,height:1,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color:isColor ==null? Colors.white:Colors.grey.shade300,
                                ),
                              ),
                            ) ,
                          ),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: 10,
                    width: 20,
                    child:
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                      ),
                    ),
                  )
                ],
              ),

            ), // КРАСНАЯ ЧАСТЬ БИЛЕТА
            Container(
              decoration: BoxDecoration(
              color: isColor==null?Color(0xFFF37B67):Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?20:0),
                bottomRight:Radius.circular(isColor==null?20:0),
              ),
            ),
              padding: EdgeInsets.only(left: 15, top: 10, right: 15,bottom: 15), // СДВИГ
              child: Column(
                children: [

                  /*
                  ДИНАМИЧЕСКИЕ ЦВЕТА
                  */

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column( // СДЕЛАЛИ ДИНАМИЧНЫЕ ЦВЕТА В СТОЛБЦЕ, ТАК КАК С ИМПОРТОМ НЕ ПОЛУЧАЕТСЯ
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                        Text(ticket['date'],
                          style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3),
                          Gap(AppLayout.getHeight(5)),
                          Text("Дата",style:isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4),
                          ],
                        ),
                      Column( // СДЕЛАЛИ ДИНАМИЧНЫЕ ЦВЕТА В СТОЛБЦЕ, ТАК КАК С ИМПОРТОМ НЕ ПОЛУЧАЕТСЯ
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:
                        [
                          Text(ticket['departure_time'],
                              style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3),
                          Gap(AppLayout.getHeight(5)),
                          Text("Время вылета",style:isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4),
                        ],
                      ),
                      Column( // СДЕЛАЛИ ДИНАМИЧНЫЕ ЦВЕТА В СТОЛБЦЕ, ТАК КАК С ИМПОРТОМ НЕ ПОЛУЧАЕТСЯ
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:
                        [
                          Text(ticket['number'].toString(),
                              style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3),
                          Gap(AppLayout.getHeight(5)),
                          Text("Номер рейса",style:isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
