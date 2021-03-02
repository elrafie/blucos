import 'package:blucos/screens/src/carb/carb_saved.dart';
import 'package:blucos/utilities/src/constants.dart';
import 'package:flutter/material.dart';

import 'carb_frequent.dart';

class CarbScreen extends StatelessWidget {
  static const routeID = '/carb';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Carb calculator",
      theme: ThemeData(
        appBarTheme: AppBarTheme(elevation: 0),
        tabBarTheme: TabBarTheme(
          indicator: BoxDecoration(color: Colors.transparent),
          unselectedLabelColor: kUnselectedButtonColor,
          labelColor: kMainBlue,
          unselectedLabelStyle: TextStyle(
            fontFamily: kMainFontFamily,
            fontWeight: FontWeight.normal,
            fontSize: kTabFontSize,
          ),
          labelStyle: TextStyle(
            fontFamily: kMainFontFamily,
            fontWeight: FontWeight.normal,
            fontSize: kTabFontSize,
          ),
        ),
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Carb calculator',
                style: TextStyle(color: kUnselectedButtonColor)),
            backgroundColor: kBackgroundColor,
            bottom: TabBar(
              tabs: [Tab(text: "Frequent"), Tab(text: "Saved")],
            ),
          ),
          body: TabBarView(
            children: [Frequent(), Saved()],
          ),
        ),
      ),
    );
  }

/*return Container(
  padding: const EdgeInsets.only(top:kTopTabBarInset, left: kLeftInset),
  child:Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text('Carb Calculator',
  style: TextStyle(
  fontSize: kTabFontSize,
  fontWeight: FontWeight.w400,
  color: kUnselectedButtonColor,
  ),
  ),
  TabBar(
  unselectedLabelColor: kUnselectedButtonColor,
  labelColor: kMainBlue,
  tabs:[
  Tab(text: 'frequent'),
  Tab(text: 'saved'),
  ],
  controller: new TabController(
  length: 2,
  ),
  ),
  Expanded(
  child: TabBarView(
  children: [
  Text('abc'),
  Text('bsc'),
  ],
  ),
  ),
  ],
  )
  );*/

}
