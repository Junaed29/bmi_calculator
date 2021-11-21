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
  int height = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
          child: ReusableCard(
            color: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "HEIGHT",
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    const Text(
                      "cm",
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: const Color(0xFF8D8E98),
                    thumbColor: const Color(0xFFEB1555),
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 30.0),
                    overlayColor: const Color(0x1FEB1555),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    min: 120.0,
                    max: 220.0,
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: Row(children: [
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "WEIGHT",
                    style: kLabelTextStyle,
                  ),
                  Text(
                    weight.toString(),
                    style: kNumberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButton(
                        iconData: FontAwesomeIcons.minus,
                        onPressed: () {
                          if (weight > 1) {
                            setState(() {
                              weight--;
                            });
                          }
                        },
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      RoundIconButton(
                        iconData: FontAwesomeIcons.plus,
                        onPressed: () {
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
              color: kActiveCardColor,
            ),
          ),
          Expanded(
            child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "AGE",
                      style: kLabelTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          iconData: FontAwesomeIcons.minus,
                          onPressed: () {
                            if (age > 1) {
                              setState(() {
                                age--;
                              });
                            }
                          },
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        RoundIconButton(
                          iconData: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                color: kActiveCardColor),
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

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const RoundIconButton({required this.iconData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      fillColor: const Color(0xFF4C4F5E),
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(iconData),
    );
  }
}
