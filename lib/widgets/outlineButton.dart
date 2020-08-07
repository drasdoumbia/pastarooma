import 'package:flutter/material.dart';
import 'package:pastarooma/constants.dart';

class OutlineBtn extends StatelessWidget {
  OutlineBtn({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 100.0,
        height: 40.0,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: kOrangeLight.withOpacity(0.5), width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFAA6D13).withOpacity(0.14),
                spreadRadius: 3.0,
                blurRadius: 10.0,
                offset: Offset(0, 3),
              ),
            ]),
        child: Center(
          child: Text(buttonTitle, style: TextStyle(fontSize: 12.0, color: kOrangeLight)),
        ),
      ),
    );
  }
}
