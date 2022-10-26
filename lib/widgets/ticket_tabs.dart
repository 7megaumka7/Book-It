//ПАНЕЛЬ ДЛЯ ОТОБРАЖЕНИЯ БИЛЕТОВ И ОТЕЛЕЙ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key,required this.firstTab,required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context); // РАЗМЕР
    return  FittedBox(child: Container(
      padding: EdgeInsets.all(3.5),
      child: Row(
        children: [
          Container( // TICKETS
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * 0.45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getWidth(50))),
                color: Colors.white),
            child: Center(child: Text(firstTab),),
          ),
          Container( // HOTELS
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * 0.45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getWidth(50))),
                  color: Colors.transparent),
              child: Center(child: Text(secondTab))),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getWidth(50)),
        color: Color(0xFFF4F6FD),
        ),
      ),
    );
  }
}
