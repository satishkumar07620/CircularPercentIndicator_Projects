// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, camel_case_types, file_names
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  List<model> list = [
    model(
      titlec: "Medical App",
      label: "9 hour progress",
      titlep: "25%",
      colorp: Color(0xFF309399),
    ),
    model(
      titlec: "Making History Notes",
      label: "20 hour progress",
      titlep: "60%",
      colorp: Color(0xFFe46471),
    ),
    model(
      titlec: "abc",
      titlep: "abc",
      label: "xyz",
      colorp: Color(0xFFf5bd7d),
    ),
    model(
      titlep: "def",
      titlec: "abc",
      label: "xvw",
      colorp: Color(0xFF6283e0),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    decoration: BoxDecoration(
                      color: Color(0xFFfbbd7d),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, bottom: 140),
                          child: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20, bottom: 140),
                          child: Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 100,
                        left: 30,
                      ),
                      child: CircularPercentIndicator(
                        radius: 48,
                        lineWidth: 5.0,
                        percent: 0.8,
                        center: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/yoga.jpg'),
                        ),
                        progressColor: Colors.red,
                        backgroundColor: Color(0xFFfbbd7d),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 100, left: 20),
                          child: Text(
                            'Sourav Suman',
                            style: TextStyle(
                                color: Color(0xFF201b1a),
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            'App Developer',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 161, 120, 79),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'My Tasks',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF3a8c90),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFe56071),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.alarm),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'To Do',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        '5 tasks now. 1 statrted',
                        style: TextStyle(color: Colors.black38),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFfec37e),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.alarm),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'In Progress',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        '1 tasks now. 1 statrted',
                        style: TextStyle(color: Colors.black38),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF6484e9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.alarm),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Done',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        '18 tasks now. 13 statrted',
                        style: TextStyle(color: Colors.black38),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 180,
              ),
              child: Text(
                "Active Projects",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              padding: EdgeInsets.all(5),
              height: 500,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.7),
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 220,
                    width: 170,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      color: list[index].colorp,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: CircularPercentIndicator(
                              radius: 40.0,
                              lineWidth: 5.0,
                              animation: true,
                              percent: 0.3,
                              center: Text(
                                list[index].titlep!,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.white,
                              backgroundColor: Colors.white10,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15, top: 33),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  list[index].titlec!,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  list[index].label!,
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class model {
  String? label;
  String? titlec;
  String? titlep;
  Color? colorp;
  model({
    required this.label,
    required this.titlec,
    required this.titlep,
    required this.colorp,
  });
}
