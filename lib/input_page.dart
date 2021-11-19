import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const inActiveCardColor = Color(0xFF111328);
const activeCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
            child: Row(children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              child: ReusableCard(
                color: selectedGender == Gender.male
                    ? activeCardColor
                    : inActiveCardColor,
                cardChild:
                    IconContent(icon: FontAwesomeIcons.mars, type: "MALE"),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
              child: ReusableCard(
                color: selectedGender == Gender.female
                    ? activeCardColor
                    : inActiveCardColor,
                cardChild:
                    IconContent(icon: FontAwesomeIcons.venus, type: "FEMALE"),
              ),
            ),
          ),
        ])),
        Expanded(
          child: ReusableCard(color: activeCardColor),
        ),
        Expanded(
            child: Row(children: [
          Expanded(
            child: ReusableCard(color: activeCardColor),
          ),
          Expanded(
            child: ReusableCard(color: activeCardColor),
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
