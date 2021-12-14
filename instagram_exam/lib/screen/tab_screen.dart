import 'package:flutter/material.dart';

import 'account/account_screen.dart';
import 'home/home_screen.dart';
import 'reels/reels_screen.dart';
import 'search/search_screen.dart';
import 'shop/shop_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const ReelsScreen(),
    const ShopScreen(),
    const AccountScreen(),
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
        items: const [
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
              Icons.movie_outlined,
              color: Colors.black,
            ),
            label: 'reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            label: 'shop',
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
