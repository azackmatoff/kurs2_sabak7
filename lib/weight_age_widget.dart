import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kurs2_sabak7/rounded_icon_button.dart';

import 'constants.dart';

class WeightAgeWidget extends StatelessWidget {
  final String text;
  final int number;
  final Function minus;
  final Function plus;
  final bool isCm;
  const WeightAgeWidget({
    Key key,
    @required this.text,
    @required this.number,
    @required this.minus,
    @required this.plus,
    this.isCm = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        isCm
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    number.toString(),
                    style: kHeightTextStyle,
                  ),
                  Text(
                    ' kg',
                  ),
                ],
              )
            : Text(
                number.toString(),
                style: kHeightTextStyle,
              ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedIconButton(
              onTap: minus,
              child: FaIcon(
                FontAwesomeIcons.minus,
              ),
            ),
            SizedBox(width: 10.0),
            RoundedIconButton(
              onTap: plus,
              child: FaIcon(
                FontAwesomeIcons.plus,
              ),
            ),
            // Material(
            //   child: InkWell(
            //     child: Container(
            //       height: 56.0,
            //       width: 56.0,
            //       decoration: BoxDecoration(
            //         color: Color(0xFF4C4F5E),
            //         borderRadius: BorderRadius.circular(15.0),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
