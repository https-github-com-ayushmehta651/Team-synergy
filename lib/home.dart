import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:stacko/screens/College.dart';
import 'package:stacko/screens/Housing.dart';
import 'package:stacko/screens/mess.dart';
import 'package:stacko/screens/profile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePagestate();
}

class _HomePagestate extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> pages = [
    College(),
    Housing(),
    Mess(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Center(child: Text('Home')),backgroundColor: Colors.red,),
        body: Center(child: pages[_currentIndex]),
        bottomNavigationBar: NavigationBarTheme(
          data:
              NavigationBarThemeData(indicatorColor: Colors.white, height: 70),
          child: NavigationBar(
            animationDuration: Duration(seconds: 1),
            backgroundColor: Colors.blueAccent,
            selectedIndex: _currentIndex,
            onDestinationSelected: (int newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
            destinations: [
              NavigationDestination(
                  selectedIcon: Icon(Icons.school),
                  icon: Icon(Icons.school),
                  label: 'College'),
              NavigationDestination(
                  selectedIcon: Icon(Icons.house),
                  icon: Icon(Icons.house_outlined),
                  label: 'Housing'),
              NavigationDestination(
                  selectedIcon: Icon(Icons.food_bank),
                  icon: Icon(Icons.food_bank_outlined),
                  label: 'Fooding'),
              NavigationDestination(
                  selectedIcon: Icon(Icons.person),
                  icon: Icon(Icons.person_outlined),
                  label: 'profile'),
            ],
          ),
        ),
      ),
    );
  }
}
