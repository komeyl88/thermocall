import 'package:flutter/material.dart';

class Freezer extends StatelessWidget {
  final String freezerName;
  final String update;

  Freezer({required this.freezerName, required this.update});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120, // Fixed height for Container
      color: Color(0xFFF1F9FF),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            freezerName,
            style: TextStyle(color: Color(0xFF002039), fontSize: 20),
          ),
          SizedBox(height: 8),
          Text(
            update,
            style: TextStyle(color: Color(0xFF686868), fontSize: 16),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "-65",
                style: TextStyle(color: Color(0xFF686868), fontSize: 16),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFF686868), // Set the text color for the button
                ),
                child: Text(
                  "-60",
                  style: TextStyle(color: Color(0xFF686868), fontSize: 16),
                ),
              ),
              Text(
                "-50",
                style: TextStyle(color: Color(0xFF686868), fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
