import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool country = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          child: Column(
            children: [
              Text(
                "please select your country",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: country,
                    onChanged: (val) {
                      setState(
                        () {
                          country = val!;
                        },
                      );
                    },
                  ),
                  Text(
                    "Iraq",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
