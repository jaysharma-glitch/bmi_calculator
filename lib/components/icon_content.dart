import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';


class IconContent extends StatelessWidget {

  IconContent(this.icon,this.text);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text,
          style: kTextStyle ,)
      ],
    );
  }
}