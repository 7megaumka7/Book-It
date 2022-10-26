import 'package:booking_tickets_practice/screens/profile_screen.dart';
import 'package:booking_tickets_practice/screens/search_screen.dart';
import 'package:booking_tickets_practice/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
//ДЛЯ ОТОБРАЖЕНИЯ ВСЕХ ПАНЕЛЕЙ СНИЗУ
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  int _selectedIndex = 0;
  void _tapppedItem (int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  static final List<Widget> _widgetOptions =<Widget> [ //КОНТЕЙНЕР ДЛЯ СМЕНЫ ПАНЕЛЕЙ
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),
    ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // ПРИ НАЖАТИИ ПЕРЕВОД НА СЛЕД РАЗДЕЛ
        onTap: _tapppedItem, // ДЕЙСТВИЕ ПРИ НАЖАТИИ
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed, // ЧТОБЫ ПР ИАКТИВАЦИИ КНОПКА НЕ ДВИГАЛАСЬ
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), //ОБЯЗАТЕЛЬНО ВВОДИМ ЛЭЙБЛ ДЛЯ КАЖДОГО ИЗ РАЗДЕЛОВ
              activeIcon:Icon(FluentSystemIcons.ic_fluent_home_filled), // АКТИВ АЙКОН ДОЛЖНА БЫТЬ ПРОПИСАНА
              label: "home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_search_filled),label: "search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_ticket_filled),label: "tickets"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_person_filled),label: "user"),
        ],
      ),
    );
  }
}
