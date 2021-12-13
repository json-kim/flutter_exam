import 'package:flutter/material.dart';

import 'account/account_screen.dart';
import 'add/add_screen.dart';
import 'favorite/favorite_screen.dart';
import 'home/home_screen.dart';
import 'search/search_screen.dart';

class TabScreen extends StatefulWidget {
  TabScreen({Key key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    FavoriteScreen(),
    AccountScreen(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int idx) {
          setState(() {
            index = idx;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            label: 'movie',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2013/11/28/11/28/christmas-220169_1280.jpg'),
            ),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
