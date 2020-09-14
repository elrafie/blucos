import 'package:blucos/utilities/src/constants.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeID = '/profile';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Screen',
        style: TextStyle(
          fontSize: 40,
          color: kMainBlue,
        ),
      ),
    );
  }
}
