import 'package:blucos/utilities/src/constants.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  static const routeID = '/';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Map Screen',
        style: TextStyle(
          fontSize: 40,
          color: kMainBlue,
        ),
      ),
    );
  }
}
