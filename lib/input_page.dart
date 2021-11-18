import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeDarkColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
            child: Row(children: [
          Expanded(
            child: ReusableCard(color: activeDarkColor),
          ),
          Expanded(
            child: ReusableCard(color: activeDarkColor),
          ),
        ])),
        Expanded(
          child: ReusableCard(color: activeDarkColor),
        ),
        Expanded(
            child: Row(children: [
          Expanded(
            child: ReusableCard(color: activeDarkColor),
          ),
          Expanded(
            child: ReusableCard(color: activeDarkColor),
          ),
        ])),
        Container(
          height: bottomContainerHeight,
          margin: EdgeInsets.only(top: 10),
          color: bottomContainerColor,
        )
      ]),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;

  ReusableCard({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
