import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'constants.dart';
import 'models/menu_data.dart';
import 'screens/home.dart';
import 'screens/menu_screen.dart';
import 'screens/orderSuccess.dart';

void main() {
  runApp(Pastarooma());
}

class Pastarooma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MenuData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Home.id,
        routes: {
          Home.id: (context) => Home(),
          MenuScreen.id: (context) => MenuScreen(),
          OrderSuccess.id: (context) => OrderSuccess(),
        },
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kSecondaryColor,
          fontFamily: 'Proxima Nova',
          textTheme: TextTheme(
            headline1:
                TextStyle(fontSize: 36, fontWeight: FontWeight.w700, fontFamily: 'Baloo Bhai 2 Bold', color: kGreyDark),
            headline2:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w700, fontFamily: 'Baloo Bhai 2 Bold', color: kGreyDark),
            bodyText1: TextStyle(fontSize: 16, color: Color(0XFFA5A5A5)),
            bodyText2: TextStyle(fontSize: 12, color: Color(0XFFA5A5A5)),
            headline6: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: kOrangeLight),
          ),
        ),
        home: App(),
      ),
    );
  }
}
