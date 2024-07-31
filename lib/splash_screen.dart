import 'package:flutter/material.dart';
import 'package:project4/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromRGBO(49, 72, 156, 0.718),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Manage Your",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  )),
              Container(
                padding: EdgeInsets.only(right: 25),
                child: Text(
                  "Daily To Do",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
              Container(
                width: 420,
                height: 420,
                child: Image.asset("assets/images/checklist.jpg"),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 50, top: 10),
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 199, 39, 1),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                margin: EdgeInsets.only(left: 35, top: 10),
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(252, 216, 115, 1),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                margin: EdgeInsets.only(left: 35, top: 10),
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(252, 216, 115, 1),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Without much worry just manage",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                "things as easy as piece of cake",
                style: TextStyle(fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                height: 45,
                width: 240,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 192, 14, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>HomeScreen()));
                  },
                  child: Text(
                    "Create a Note",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
