import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  ContactCard({this.cardTitle, this.cardImage, this.width, this.height});

  final String cardTitle;
  final Image cardImage;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        padding: EdgeInsets.all(10.0),
//      width: 176.0,
        height: 161.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF5F8D29).withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 30,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Text(
              cardTitle,
              style: Theme.of(context).textTheme.headline2,
            ),
            Container(
              width: width,
              height: height,
              child: cardImage,
            ),
          ],
        ),
      ),
    );
  }
}
