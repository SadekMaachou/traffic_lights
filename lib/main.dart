import 'package:flutter/material.dart';

void main() {
  runApp(TrafficLightSimulation());
}

class TrafficLightSimulation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traffic Light Simulation',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: TrafficLightScreen(),
    );
  }
}

class TrafficLightScreen extends StatefulWidget {
  @override
  _TrafficLightScreenState createState() => _TrafficLightScreenState();
}

class _TrafficLightScreenState extends State<TrafficLightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Road1(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Road2(),
                ],
              ),
              Road1()
            ],
          ),
        ),
      ),
    );
  }
}

class Road1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 120,
      color: Colors.grey[800],
      child: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          Trait(),
          SizedBox(
            width: 30,
          ),
          Trait(),
          SizedBox(
            width: 30,
          ),
          Trait(),
          SizedBox(
            width: 30,
          ),
          Trait(),
        ],
      ),
    );
  }
}

class Trait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 80,
      height: 8,
    );
  }
}

class Trait2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 8,
      height: 80,
    );
  }
}

class Road2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 700,
      color: Colors.grey[800],
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Trait2(),
          SizedBox(
            height: 30,
          ),
          Trait2(),
          SizedBox(
            height: 30,
          ),
          Trait2(),
          SizedBox(
            height: 30,
          ),
          Trait2(),
          SizedBox(
            height: 30,
          ),
          Trait2(),
          SizedBox(
            height: 30,
          ),
          Trait2(),
        ],
      ),
    );
  }
}

class TrafficLight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.red,
          ),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.yellow,
          ),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
