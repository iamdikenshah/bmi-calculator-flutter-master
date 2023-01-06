import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  Color color;
  final Widget cardChild;

  ReusableCard({@required Color color, this.cardChild}) {
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
