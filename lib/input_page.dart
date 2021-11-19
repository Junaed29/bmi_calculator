import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';

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
            child: ReusableCard(
              onPressed: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              color: selectedGender == Gender.male
                  ? kActiveCardColor
                  : kInActiveCardColor,
              cardChild: IconContent(icon: FontAwesomeIcons.mars, type: "MALE"),
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPressed: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
              color: selectedGender == Gender.female
                  ? kActiveCardColor
                  : kInActiveCardColor,
              cardChild:
                  IconContent(icon: FontAwesomeIcons.venus, type: "FEMALE"),
            ),
          ),
        ])),
        Expanded(
          child: ReusableCard(color: kActiveCardColor),
        ),
        Expanded(
            child: Row(children: [
          Expanded(
            child: ReusableCard(color: kActiveCardColor),
          ),
          Expanded(
            child: ReusableCard(color: kActiveCardColor),
          ),
        ])),
        Container(
          height: kBottomContainerHeight,
          margin: const EdgeInsets.only(top: 10),
          color: kBottomContainerColor,
        )
      ]),
    );
  }
}
