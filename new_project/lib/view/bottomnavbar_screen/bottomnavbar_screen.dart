import 'package:flutter/material.dart';
import 'package:new_project/utilis/constants/color_contants.dart';
import 'package:new_project/view/bookmark_screen/bookmark_screen.dart';
import 'package:new_project/view/create_recipe_screen/create_recipe_screen.dart';
import 'package:new_project/view/home_screen/homescreen.dart';
import 'package:new_project/view/notifications/notifications.dart';
import 'package:new_project/view/profile_screen/profile_screen.dart';

class BottomnavbarScreen extends StatefulWidget {
  const BottomnavbarScreen({super.key});

  @override
  State<BottomnavbarScreen> createState() => _BottomnavbarScreenState();
}

class _BottomnavbarScreenState extends State<BottomnavbarScreen> {
  final List screens = [
    Homescreen(),
    BookmarkScreen(),
    Notifications(),
    ProfileScreen()
  ];
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorContants.PRIMARY_COLOR,
          child: Icon(
            Icons.add,
            color: ColorContants.TEXT_COLOR,
          ),
          shape: CircleBorder(),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateRecipeScreen()));
          },
        ),
        body: screens[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: (value) {
            _currentindex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline), label: ""),
            BottomNavigationBarItem(
                icon: Icon((Icons.notifications_none_outlined)), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: ""),
          ],
        ));
  }
}
