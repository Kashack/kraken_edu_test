import 'package:flutter/material.dart';

import 'activity_page.dart';
import 'constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectindex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavigationList[_selectindex]['Navigation'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.w500, color: iconColor),
        unselectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.w500, color: iconFillColor),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        currentIndex: _selectindex,
        onTap: (value) => setState(() {
          _selectindex = value;
        }),
        items: bottomNavigationList
            .map(
              (item) => BottomNavigationBarItem(
              icon: Icon(
                item['icon'],
              ),
              activeIcon: Column(
                children: [
                  Icon(
                      item['icon'],
                    size: 30,
                    color: iconFillColor,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: iconFillColor,
                    ),
                  )
                ],
              ),
              label: item['Name']),
        )
            .toList(),
      ),
    );
  }
}

const List<Map<String, dynamic>> bottomNavigationList = [
  {
    'Name': 'Home',
    'icon': Icons.home_outlined,
  },
  {
    'Name': 'Wallet',
    'icon': Icons.account_balance_wallet_outlined,
  },
  {
    'Name': 'Explore',
    'icon': Icons.explore_outlined,
  },
  {
    'Name': 'Activity',
    'icon': Icons.airplane_ticket,
    'Navigation': ActivityPage(),
  },
  {
    'Name': 'Profile',
    'icon': Icons.account_circle_outlined,
  },
];

