// ignore_for_file: camel_case_types, file_names, prefer_const_constructors

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class Last_Card_Screen extends StatefulWidget {
  const Last_Card_Screen({super.key});

  @override
  State<Last_Card_Screen> createState() => _Last_Card_ScreenState();
}

class _Last_Card_ScreenState extends State<Last_Card_Screen> {
  String dropdownvalue = 'Mon, 20 April';
  String dropdownvalue1 = '16:00';
  String dropdownvalue2 = '20:00';

  var items1 = [
    '16:00',
    '17:00',
    '18:00',
  ];
  var items2 = [
    '20:00',
    '21:00',
    '22:00',
  ];

  var items = [
    'Mon, 20 April',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFfabd7e),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      'Create new task',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black26, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelText: 'Title',
                        hintText: 'Make tasks for the sport app',
                        labelStyle: TextStyle(color: Colors.black26),
                      ),
                      cursorColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      'Date',
                      style: TextStyle(color: Colors.black26),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: Container(
                              height: .7,
                              color: Colors.black,
                            ),
                            value: dropdownvalue,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                            ),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF2d949d),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.calendar_today,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Start Date',
                      style: TextStyle(
                        color: Color(0xFF9f9f9f),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'End Date',
                      style: TextStyle(
                        color: Color(0xFF9f9f9f),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    // color: Colors.amber,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: DropdownButton(
                      itemHeight: 50.0,
                      isExpanded: true,
                      underline: Container(
                        height: .7,
                        color: Colors.black,
                      ),
                      value: dropdownvalue1,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      items: items1.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue1 = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: DropdownButton(
                      isExpanded: true,
                      underline: Container(
                        height: .7,
                        color: Colors.black,
                      ),
                      value: dropdownvalue2,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      items: items2.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue2 = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      color: Color(0xFF9f9f9f),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    decoration: InputDecoration(
                      hintText:
                          ' Add product categories to the \n dashboard change vertical scroll to \n horizontal. Draw new icons in blue',
                    ),
                    maxLines: 3,
                  ),
                ),

                // Text(
                //     'Add product categories to the dashboard change vertical scroll to horizontal. Draw new icons in blue  '),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF9f9f9f),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                          child: Text(
                        'SHORT APP',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 35,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xFFdbdbdb),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'MEDICAL APP',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFdbdbdb),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'RENT APP',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFdbdbdb),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'NOTES',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      height: 35,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFFdbdbdb),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'GAMING PLATFORM APP',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  height: 50,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Color(0xFF6687e4),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'CREATE TASK',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
