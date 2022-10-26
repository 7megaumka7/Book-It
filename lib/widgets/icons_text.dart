import 'dart:html';
import 'dart:ui';
import 'package:booking_tickets_practice/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/layout.dart';
//stless
//
class IconsText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconsText({Key? key,required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( // Flight Actions
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12),vertical: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
      ),
      child: Row(
        children: [
          Icon(icon,color: Color(0xFFBFC2DF),),
          Gap(AppLayout.getWidth(15)), // СТАВИМ ШИРИНУ ТАК КАК МЕНЯЕМ РАССТОЯНИЕ В ГОРИЗОНТАЛЬНОЙ ПЛОСКОКСТИ
          Text(text,style: Styles.textStyle),
        ],
      ),
    );
  }
}
