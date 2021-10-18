import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kurs2_sabak7/constants.dart';
import 'package:kurs2_sabak7/icon_content.dart';
import 'package:kurs2_sabak7/reusable_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'.toUpperCase(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    bgColor: kCardBGColor,
                    child: IconContent(
                      text: 'Male',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bgColor: kCardBGColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              bgColor: kCardBGColor,
              child: Text('data'),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    bgColor: kCardBGColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bgColor: kCardBGColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildContainer2() {
    return Container(
      // color: Color(0xFF1d1e30), Egerde decoration bar bolso, bul color berilbeyt

      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
