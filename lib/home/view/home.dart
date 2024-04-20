import 'package:flutter/material.dart';

import 'freezer.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, // Center the title
          title: Text('ThermoCall'),
          actions: [
            IconButton(
              onPressed: () {
                // Add action here
              },
              icon: Icon(
                Icons.more_vert_sharp,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white70,
        // Set background color
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Freezer(
                  freezerName: "Bio Cell",
                  update: "Last Updated 6:25 pm",
                ),
                SizedBox(height: 8),
                Freezer(
                  freezerName: "Bio Cell",
                  update: "Last Updated 6:25 pm",
                ),
                SizedBox(height: 8),
                Freezer(
                  freezerName: "Bio Cell",
                  update: "Last Updated 6:25 pm",
                ),
                SizedBox(height: 8),
                Freezer(
                  freezerName: "Bio Cell",
                  update: "Last Updated 6:25 pm",
                ),
                SizedBox(height: 8),
                Freezer(
                  freezerName: "Bio Cell",
                  update: "Last Updated 6:25 pm",
                ),
                SizedBox(height: 8),
                Freezer(
                  freezerName: "Bio Cell",
                  update: "Last Updated 6:25 pm",
                ),
                SizedBox(height: 8),
                Freezer(
                  freezerName: "Bio Cell",
                  update: "Last Updated 6:25 pm",
                ),
                SizedBox(height: 8),
                Freezer(
                  freezerName: "Bio Cell",
                  update: "Last Updated 6:25 pm",
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.grey,
                  size: 38,
                ),
                Icon(
                  Icons.account_circle_outlined,
                  color: Colors.grey,
                  size: 38,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add action here
          },
          backgroundColor: Color(0xff3C71A0),
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
