import 'package:blucos/screens/src/home/curated/curated_screen.dart';
import 'package:blucos/screens/src/home/featured/featured_screen.dart';
import 'package:blucos/screens/src/home/social/social_screen.dart';
import 'package:blucos/utilities/utilities.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeID = '/home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
        tabBarTheme: TabBarTheme(
          indicator: BoxDecoration(
            color: Colors.transparent,
          ),
          unselectedLabelColor: kUnselectedButtonColor,
          labelColor: kMainBlue,
          unselectedLabelStyle: TextStyle(
            fontFamily: kMainFontFamily,
            fontWeight: FontWeight.bold,
            fontSize: kTabFontSize,
          ),
          labelStyle: TextStyle(
            fontFamily: kMainFontFamily,
            fontWeight: FontWeight.bold,
            fontSize: kTabFontSize,
          ),
        ),
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TabBar(
            tabs: [
              Tab(text: 'curated'),
              Tab(text: 'featured'),
              Tab(text: 'social'),
            ],
            labelPadding: EdgeInsets.only(top: kTopTabBarInset),
          ),
          body: TabBarView(
            children: [
              CuratedScreen(),
              FeaturedScreen(),
              SocialScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
