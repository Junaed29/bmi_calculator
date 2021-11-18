import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

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
            child: ReusableCard(
              color: activeDarkColor,
              cardChild: IconContent(icon: FontAwesomeIcons.mars, type: "MALE"),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeDarkColor,
              cardChild:
                  IconContent(icon: FontAwesomeIcons.venus, type: "FEMALE"),
            ),
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
