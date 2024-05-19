import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:thermocall/home/view/freezer.dart';
import '../../setup/view/setup.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _selectedIndex = 0;

  final List<IconData> iconList = [
    Icons.home,
    Icons.account_circle_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'ThermoCall',
            style: TextStyle(color: Color(0xFF002039)),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_sharp,
              color: Color(0xFF002039),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Freezer(
                isErrorFreeze: false,
                title: 'Bio Cell',
                lastUpdated: 'Last updated 6:25 pm',
                maxTemperature: '-50',
                minTemperature: '-65',
                normalTemperature: '-60',
              ),
              Freezer(
                isErrorFreeze: true,
                title: 'Freezer name',
                lastUpdated: 'Last updated 7:25 pm',
                maxTemperature: '-50',
                minTemperature: '-65',
                normalTemperature: '-60',
              ),
              Freezer(
                isErrorFreeze: false,
                title: 'Freezer name',
                lastUpdated: 'Last updated 8:25 pm',
                maxTemperature: '-50',
                minTemperature: '-65',
                normalTemperature: '-60',
              ),
              Freezer(
                isErrorFreeze: false,
                title: 'Freezer name',
                lastUpdated: 'Last updated 9:25 pm',
                maxTemperature: '-50',
                minTemperature: '-65',
                normalTemperature: '-60',
              ),
              Freezer(
                isErrorFreeze: false,
                title: 'Freezer name',
                lastUpdated: 'Last updated 9:25 pm',
                maxTemperature: '-50',
                minTemperature: '-65',
                normalTemperature: '-60',
              ),
              Freezer(
                isErrorFreeze: false,
                title: 'Freezer name',
                lastUpdated: 'Last updated 10:25 pm',
                maxTemperature: '-50',
                minTemperature: '-65',
                normalTemperature: '-60',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        activeColor: Color(0xFF002039),
        inactiveColor: Colors.grey,
        iconSize: 38,
        backgroundColor: Colors.white,
        borderColor: Colors.black12,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SetupPage()),
          );
        },
        backgroundColor: Color(0xFF002039),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
