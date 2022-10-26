//ШАБЛОН ДЛЯ СТОЛБЦОВ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/layout.dart';
import '../utils/styles.dart';
class ColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const ColumnLayout({Key? key,required this.firstText ,required this.secondText,required this.alignment,required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: alignment,
          children: [
            Text(firstText,style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3),
            Gap(AppLayout.getHeight(5)),
            Text(secondText,style:isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4),
         ],
        ),
    );
  }
}
