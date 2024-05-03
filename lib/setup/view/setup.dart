import 'package:flutter/material.dart';

const Color textColor = Color(0xFF002039);
const double textSize = 16.0;

class SetupPage extends StatefulWidget {
  const SetupPage({Key? key}) : super(key: key);

  @override
  _SetupPageState createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  double _lowerValue = -65;
  double _upperValue = -50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Setup',
              style: TextStyle(
                color: Color(0xFF002039),
              ),
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Text(
                'ID: Th12345678',
                style: TextStyle(
                  fontSize: textSize,
                  color: textColor,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Updated 1 minute ago',
                style: TextStyle(
                  fontSize: textSize,
                  color: textColor,
                ),
              ),
              SizedBox(height: 40),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: textSize),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                ),
              ),
              SizedBox(height: 32),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Description',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: textSize),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Set Temperature Range",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '-65',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: textColor,
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1F9FF),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          '-60',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '-50',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              RangeSlider(
                values: RangeValues(_lowerValue, _upperValue),
                min: -65,
                max: -50,
                divisions: 15,
                onChanged: (values) {
                  setState(() {
                    _lowerValue = values.start;
                    _upperValue = values.end;
                  });
                },
                activeColor: Colors.blue,
                inactiveColor: Colors.grey[300],
              ),
              Spacer(), // Add a Spacer to push the buttons to the bottom
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: textColor),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: textColor, width: 2.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: textColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(SetupPage());
}
