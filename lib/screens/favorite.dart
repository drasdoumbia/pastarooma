import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Favorites",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
