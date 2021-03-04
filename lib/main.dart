// import 'package:blucos/models/models.dart';
import 'package:blucos/models/user_model.dart';
import 'package:blucos/screens/screens.dart';
import 'package:blucos/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:blucos/utilities/src/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentTabIndex = 0;

  final _tabs = [
    HomeScreen(),
    MapScreen(),
    CarbScreen(),
    ProfileScreen(),
  ];

  final _tabBarIcons = [
    SFSymbols.house,
    SFSymbols.map,
    SFSymbols.number_square,
    SFSymbols.person,
  ];

  List<BottomNavigationBarItem> get _tabItems {
    final items = <BottomNavigationBarItem>[];

    for (var icon in _tabBarIcons) {
      final item = BottomNavigationBarItem(
          icon: Icon(
            icon,
            size: 30,
          ),
          title: Text(''));
      items.add(item);
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserModel(),
      child: MaterialApp(
        theme: ThemeData(
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: kBackgroundColor,
            modalBackgroundColor: kBackgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          popupMenuTheme: PopupMenuThemeData(
            color: kMainBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          scaffoldBackgroundColor: Color(0xfffafafa),
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
              fontFamily: kMainFontFamily),
        ),
        home: Scaffold(
          body: _tabs[_currentTabIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentTabIndex,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Color(0xfffafafa),
            selectedItemColor: kMainBlue,
            unselectedItemColor: Color(0xff707070),
            items: _tabItems,
            onTap: (index) {
              setState(() {
                _currentTabIndex = index;
              });
            },
          ),
        ),
        onGenerateRoute: Rouuter.getRoute,
      ),
    );
  }
}
