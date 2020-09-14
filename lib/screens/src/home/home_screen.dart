import 'package:blucos/utilities/src/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeID = '/home';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Screen',
        style: TextStyle(
          fontSize: 40,
          color: kMainBlue,
        ),
      ),
    );
  }
}
