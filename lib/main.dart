import 'package:flutter/material.dart';
import 'package:maplestory/components/button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            height: height * 0.7,
            width: width,
            color: Color.fromARGB(255, 54, 244, 184),
          ),
          Container(
            height: 6,
            color: Color.fromARGB(255, 29, 101, 32),
          ),
          Expanded(
              child: Container(
            color: Color.fromARGB(255, 140, 140, 140),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "M A P L E S T O R Y",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button(
                          text: 'Play',
                          function: () {},
                        ),
                        Button(
                          text: 'Attack',
                          function: () {},
                        ),
                        Button(
                          text: '<==',
                          function: () {},
                        ),
                        Button(
                          text: 'Jump',
                          function: () {},
                        ),
                        Button(
                          text: '==>',
                          function: () {},
                        ),
                      ]),
                ]),
          ))
        ]),
      ),
    );
  }
}
