import 'file:///C:/Users/User/flutter/projects/bmi_app/lib/screens/result_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          sliderTheme: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              inactiveTrackColor: Color(0xFF8D8E98),
              thumbColor: Colors.pink,
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 12,
              ),
              overlayColor: Color(0x29EB1555),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30))),
     home: HomeScreen(),
    );
  }
}
