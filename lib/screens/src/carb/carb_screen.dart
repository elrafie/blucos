import 'package:blucos/utilities/src/constants.dart';
import 'package:flutter/material.dart';

class CarbScreen extends StatelessWidget {
  static const routeID = '/carb';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Carb Screen',
        style: TextStyle(
          fontSize: 40,
          color: kMainBlue,
        ),
      ),
    );
  }
}
