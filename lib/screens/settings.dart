import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Settings",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
