import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  CardContent({@required this.icontype, @required this.gender});
  final IconData icontype;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icontype,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
