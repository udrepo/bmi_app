import 'package:bmi_app/gender_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_container_widget.dart';
import 'consts.dart';

enum Gender { MALE, FEMALE }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender selectedGender;
  int height = 175;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: CardContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    color: selectedGender == Gender.MALE
                        ? kActiveCardContainerColor
                        : kInactiveCardContainerColor,
                    cardChild: GenderWidget('MALE', FontAwesomeIcons.male),
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    color: selectedGender == Gender.FEMALE
                        ? kActiveCardContainerColor
                        : kInactiveCardContainerColor,
                    cardChild: GenderWidget('FEMALE', FontAwesomeIcons.female),
                  ),
                ),
              ],
            )),
            Expanded(
              child: CardContainer(
                color: kInactiveCardContainerColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Height'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberText,
                        ),
                        Text('cm')
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: CardContainer(
                    color: kInactiveCardContainerColor,
                  ),
                ),
                Expanded(
                  child: CardContainer(color: kInactiveCardContainerColor),
                ),
              ],
            )),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerWidth,
            )
          ],
        ));
  }
}
