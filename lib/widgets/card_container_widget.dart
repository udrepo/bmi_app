import 'package:flutter/material.dart';
class CardContainer extends StatelessWidget {

  final Widget cardChild;
  final Color color;
  final Function onPress;
  CardContainer({@required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
