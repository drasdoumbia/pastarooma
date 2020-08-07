import 'package:flutter/material.dart';
import 'package:pastarooma/constants.dart';

class CustomBtn extends StatelessWidget {
  CustomBtn({@required this.onTap, @required this.buttonTitle, this.width, this.btnBg, this.btnTextStyle});

  final Function onTap;
  final String buttonTitle;
  final double width;
  final Color btnBg;
  final TextStyle btnTextStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        height: 40.0,
        decoration: BoxDecoration(
          color: btnBg,
          border: Border.all(color: kOrangeLight.withOpacity(0.5), width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFAA6D13).withOpacity(0.14),
              spreadRadius: 3.0,
              blurRadius: 10.0,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(buttonTitle, style: btnTextStyle),
        ),
      ),
    );
  }
}
