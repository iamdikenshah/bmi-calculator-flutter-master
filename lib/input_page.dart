import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'IconContent.dart';

const bottomContainerHeight = 80.0;

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

//1 = Male, 2 = Female
  void updateCardColor(int gender) {
    if (gender == 1 && maleCardColor == inactiveCardColor) {
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    } else {
      maleCardColor = inactiveCardColor;
    }

    if (gender == 2 && femaleCardColor == inactiveCardColor) {
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
    } else {
      femaleCardColor = inactiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateCardColor(1);
                        });
                      },
                      child: ReusableCard(
                        color: maleCardColor,
                        cardChild: IconContent(
                          label: 'MALE',
                          icondata: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateCardColor(2);
                        });
                      },
                      child: ReusableCard(
                        color: femaleCardColor,
                        cardChild: IconContent(
                          label: 'FEMALE',
                          icondata: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: Color(0xFF1D1E33),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
