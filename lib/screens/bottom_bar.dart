import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trivia_app/screens/home_screen.dart';
import 'package:trivia_app/screens/leaderboards_screen.dart';
import 'package:trivia_app/screens/profile_screen.dart';
import 'package:trivia_app/utils/app_styles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  void updateIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> pages = [
    const HomeScreen(),
    const ProfileScreen(),
    const LeaderBoardsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.amber,
          backgroundColor: AppStyles.background,
          onTap: updateIndex,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.anchor,
                color: AppStyles.turquoise,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon:
                    Icon(FontAwesomeIcons.android, color: AppStyles.turquoise),
                label: 'Profile',
                backgroundColor: AppStyles.turquoise),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.airbnb, color: AppStyles.turquoise),
                label: 'LeaderBoards'),
          ]),
    );
  }
}
