import 'package:flutter/material.dart';

class Freezer extends StatefulWidget {
  final bool isErrorFreeze;
  final String title;
  final String lastUpdated;
  final String minTemperature;
  final String maxTemperature;
  final String normalTemperature;

  const Freezer({
    Key? key,
    required this.isErrorFreeze,
    required this.title,
    required this.lastUpdated,
    required this.minTemperature,
    required this.maxTemperature,
    required this.normalTemperature,
  }) : super(key: key);

  @override
  State<Freezer> createState() => _FreezerState();
}

class _FreezerState extends State<Freezer> {
  bool get isErrorFreeze => widget.isErrorFreeze;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: isErrorFreeze ? Colors.redAccent : Color(0xF1F9FF),
          height: 100,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        color: isErrorFreeze ? Colors.white : Color(0xFF002039),
                        fontSize: 23,
                      ),
                    ),
                    Text(
                      widget.lastUpdated,
                      style: TextStyle(
                        color: isErrorFreeze ? Colors.white : Color(0xFF686868),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  widget.minTemperature,
                  style: TextStyle(
                    color: isErrorFreeze ? Colors.white : Color(0xFF686868),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 55,
                  width: 55,
                  color: isErrorFreeze ? Colors.red : Colors.white,
                  child: Center(
                    child: Text(
                      widget.normalTemperature,
                      style: TextStyle(
                        fontSize: 20,
                        color: isErrorFreeze ? Colors.white : Color(0xFF002039),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8),
                child: Text(
                  widget.maxTemperature,
                  style: TextStyle(
                    color: isErrorFreeze ? Colors.white : Color(0xFF686868),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
