import 'package:bmi_app/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderWidget extends StatelessWidget {

  final String title;
  final IconData icon;


  GenderWidget(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 40,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
