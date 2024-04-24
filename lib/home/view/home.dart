import 'package:flutter/material.dart';
import 'package:thermocall/home/view/freezer.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _selectedIndex = 0;

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
                maxTemperature: '-20',
                minTemperature: '20',
                normalTemperature: '10',
              ),
              Freezer(
                isErrorFreeze: true,
                title: 'Freezer name',
                lastUpdated: 'Last updated 7:25 pm',
                maxTemperature: '-30',
                minTemperature: '30',
                normalTemperature: '20',
              ),
              Freezer(
                isErrorFreeze: false,
                title: 'Freezer name',
                lastUpdated: 'Last updated 8:25 pm',
                maxTemperature: '-40',
                minTemperature: '40',
                normalTemperature: '30',
              ),
              Freezer(
                isErrorFreeze: false,
                title: 'Freezer name',
                lastUpdated: 'Last updated 9:25 pm',
                maxTemperature: '-50',
                minTemperature: '50',
                normalTemperature: '40',
              ),
              Freezer(
                isErrorFreeze: false,
                title: 'Freezer name',
                lastUpdated: 'Last updated 9:25 pm',
                maxTemperature: '-60',
                minTemperature: '60',
                normalTemperature: '50',
              ),
              Freezer(
                isErrorFreeze: false,
                title: 'Freezer name',
                lastUpdated: 'Last updated 10:25 pm',
                maxTemperature: '-70',
                minTemperature: '80',
                normalTemperature: '60',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          color: Colors.white,
          elevation: 10,
          child: Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: Icon(
                      Icons.home,
                      color:
                          _selectedIndex == 0 ? Color(0xFF002039) : Colors.grey,
                      size: 38,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: Icon(
                      Icons.account_circle_outlined,
                      color:
                          _selectedIndex == 1 ? Color(0xFF002039) : Colors.grey,
                      size: 38,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF002039),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
