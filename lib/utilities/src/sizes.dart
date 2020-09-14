import 'dart:math';

import 'package:flutter/material.dart';

/// Returns the display size (as a [MediaQuery] object) of the device currently running this application.
Size displaySize(BuildContext context) {
  //debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

/// Returns the display height (as a [MediaQuery] object) of the device currently running this application.
double displayHeight(BuildContext context) {
  //debugPrint('Height = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

/// Returns the display width (as a [MediaQuery] object) of the device currently running this application.
double displayWidth(BuildContext context) {
  //debugPrint('Width = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}

/// Returns a [double] representing the optimal size based on the available and desired space.
double optimalSize(
    {@required double desiredSize,
    @required double availableHeight,
    @required double availableWidth}) {
  if (desiredSize <= availableHeight && desiredSize <= availableWidth) {
    return desiredSize;
  } else {
    final limiter = min(availableHeight, availableWidth);
    return limiter - (0.1 * limiter);
  }
}
