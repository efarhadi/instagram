import 'package:flutter/material.dart';
import 'package:instagram_app/screens/activity_screen.dart';
import 'package:instagram_app/screens/add_post_screen.dart';
import 'package:instagram_app/screens/home_screen.dart';
import 'package:instagram_app/screens/search_screen.dart';
import 'package:instagram_app/screens/user_profile_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff1C1F2E),
          currentIndex: _selectedBottomNavigation,
          onTap: (int index) {
            setState(() {
              _selectedBottomNavigation = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_home.png'),
              activeIcon: Image.asset('images/icon_active_home.png'),
              label: 'item0',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_search_navigation.png'),
              activeIcon:
                  Image.asset('images/icon_search_navigation_active.png'),
              label: 'item0',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_add_navigation.png'),
              activeIcon: Image.asset('images/icon_add_navigation_active.png'),
              label: 'item0',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_activity_navigation.png'),
              activeIcon:
                  Image.asset('images/icon_activity_navigation_active.png'),
              label: 'item0',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xffC5C5C5),
                    ),
                    borderRadius: BorderRadius.circular(6)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'images/profile.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              activeIcon: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xffF35383),
                    ),
                    borderRadius: BorderRadius.circular(6)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'images/profile.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              label: 'item0',
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
      body: Center(
        child: IndexedStack(
          index: _selectedBottomNavigation,
          children: layout(),
        ),
      ),
    );
  }

  List<Widget> layout() {
    return [
      HomeScreen(),
      SearchScreen(),
      addPost(),
      activityScreen(),
      UserProfile()
    ];
  }
}
