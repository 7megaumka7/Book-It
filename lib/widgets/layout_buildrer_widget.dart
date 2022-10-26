//stless
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//ДЛЯ ПОЛОСОЧКИ
class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuilderWidget({Key? key,required this.isColor, required this.sections,this.width=3}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder( // СОЗДАТЬ МАКЕТ ДЛЯ ПОЛОСОЧКИ
        builder: (BuildContext context, BoxConstraints constraints) {
          print("width is a ${constraints.constrainWidth()}");// УЗНАТЬ РАЗМЕР ОГРАНИЧЕНИЯ
          return Flex( // ДЛЯ ALIGN
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            List.generate((constraints.constrainWidth()/sections).floor(), (index) => SizedBox(
              width: width, height: 1,
              child: DecoratedBox(decoration: BoxDecoration(
                color: isColor==null?Colors.white:Colors.grey.shade300,
                ),
              ),
            )),
          );
        }
    );
  }
}
