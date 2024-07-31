import 'package:flutter/material.dart';
import 'package:project4/add_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color.fromRGBO(49, 72, 156, 0.718),
              child: Column(
                children: [
                  SafeArea(
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                        ),
                        Row(
                          children: [
                            Column(children: [
                              Container(
                                padding: EdgeInsets.only(top: 20, left: 20),
                                child: Text(
                                  "Welcome to Notes",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Have a great Day",
                                  style: TextStyle(fontSize: 25),
                                ),
                              )
                            ]),
                            Container(
                              padding: EdgeInsets.only(left: 30, top: 20),
                              child: Image.asset("assets/images/photo.jpg"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 130),
                    child: Text(
                      "My Priority Task",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                            width: 170,
                            height: 170,
                            child: Image.asset("assets/images/rectangle1.jpg")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Container(
                            width: 170,
                            height: 170,
                            child: Image.asset("assets/images/rectangle2.jpg")),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30),
                        child: Text(
                          "My Tasks",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200, top: 30),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddScreen()));
                              });
                            },
                            child: Image.asset("assets/images/add.jpg")),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 20),
                        child: Text(
                          "Today’s Task",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 20),
                        child: Text(
                          "Weekly Task",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 20),
                        child: Text(
                          "Weekly Task",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
