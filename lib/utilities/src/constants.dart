import 'package:flutter/material.dart';

// Fonts
const kMainFontFamily = 'Roboto';

// Font size
const kTabFontSize = 20.00;
const kListHeading = 18.00;
const kFontSmall = 10.00;

// Colors
const kMainBlue = Color(0xFF1B1AD5);
const kMainRed = Color(0xFFBB3838);
const kMainGreen = Color(0xFF23908C);
const kUnselectedButtonColor = Color(0xFF707070);
const kTabBarColor = Color(0xFFe8e8e8);
const kBackgroundColor = Color(0xFFFAFAFA);

// EdgeInsets
const kTopTabBarInset = 40.00;
const kLeftInset = 20.00;

// MapBox API
// For now it's just a public key that mapbox give us to use.
const mapBoxToken = 'pk.eyJ1Ijoic2FuZHJvLW1pY3pldnNraSIsImEiOiJja2t2YWRtYTIxMzkyMnBwaDh0MGd5eXExIn0.2yKKDToUACE4fy1aThNe_w';

// Url template must be the third party > CARTO style
const mapBoxStyleUrl = 'https://api.mapbox.com/styles/v1/sandro-miczevski/ckkvg0uc0370x17o92542xdn9/tiles/256/{z}/{x}/{y}@2x?access_token=';