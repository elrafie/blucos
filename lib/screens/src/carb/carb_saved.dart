import 'package:blucos/screens/src/carb/frequent_restaurants.dart';
import 'package:blucos/utilities/utilities.dart';
import 'package:flutter/material.dart';

class Saved extends StatelessWidget {
  final List<SavedRestaurant> restaurants = [
    SavedRestaurant(
        "Breakfast at Tims",
        "Tim Hortons (1234 street south, Hamilton ON)",
        "breakfast",
        "8",
        "200"),
    SavedRestaurant(
        "Breakfast at Tims",
        "Tim Hortons (1234 street south, Hamilton ON)",
        "breakfast",
        "8",
        "200"),
    SavedRestaurant(
        "Breakfast at Tims",
        "Tim Hortons (1234 street south, Hamilton ON)",
        "breakfast",
        "8",
        "200"),
    SavedRestaurant("Breakfast at Tims",
        "Tim Hortons (1234 street south, Hamilton ON)", "breakfast", "8", "200")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: restaurants.length,
          itemBuilder: (BuildContext context, int index) =>
              frequentCard(context, index)),
    );
  }

  Widget frequentCard(BuildContext context, int index) {
    final restro = restaurants[index];
    return new Container(
      child: Card(
        color: kMainBlue,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Text(
                  restro.title,
                  style: TextStyle(
                      fontSize: kListHeading,
                      fontWeight: FontWeight.w500,
                      color: kBackgroundColor),
                ),
                Spacer(),
                Icon(
                  Icons.check_box_outline_blank,
                  color: kBackgroundColor,
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  restro.address,
                  style: TextStyle(
                      color: kBackgroundColor, fontWeight: FontWeight.w200),
                ),
                Spacer(),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(children: <Widget>[
                  Icon(Icons.room_service, color: kUnselectedButtonColor),
                  Text(
                    " ${restro.foodTime}",
                    style: TextStyle(
                        color: kBackgroundColor, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.local_restaurant_outlined,
                      color: kUnselectedButtonColor),
                  Text(" ${restro.units} units",
                      style: TextStyle(
                          color: kBackgroundColor,
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  Icon(
                    Icons.no_food,
                    color: kUnselectedButtonColor,
                  ),
                  Text(" ${restro.weight} grams",
                      style: TextStyle(
                          color: kBackgroundColor,
                          fontWeight: FontWeight.bold)),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
