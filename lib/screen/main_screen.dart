import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinterest/screen/profile_screen.dart';
import 'package:pinterest/screen/search_screen.dart';

import 'add_screen.dart';
import 'home_screen.dart';
import 'message_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final _screens = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    MessageScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        currentIndex: _currentIndex,
        onTap: (i) {
          setState(() {
            _currentIndex = i;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.add),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Badge(child: Icon(CupertinoIcons.chat_bubble_text),),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: ''
          ),
        ],
      ),
    );
  }
}