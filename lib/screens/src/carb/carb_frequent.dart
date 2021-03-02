import 'package:blucos/screens/src/carb/frequent_restaurants.dart';
import 'package:blucos/utilities/utilities.dart';
import 'package:flutter/material.dart';

class Frequent extends StatelessWidget {
  static final List<MealPreview> meal = [
    MealPreview("Egg & cheese bagel with cream cheese", "100", "110", "10"),
    MealPreview("Vanilla dip donut", "20", "22", "2"),
    MealPreview("Hashbrown", "60", "60", "0"),
    MealPreview("Garden Salad ", "20", "30", "10")
  ];

  final List<FrequentRestaurant> restaurants = [
    FrequentRestaurant(
        "Breakfast at Tims",
        "Tim Hortons (1234 street south, Hamilton ON)",
        "breakfast",
        "8",
        "200",
        meal),
    FrequentRestaurant(
        "Breakfast at Tims",
        "Tim Hortons (1234 street south, Hamilton ON)",
        "breakfast",
        "8",
        "200",
        meal),
    FrequentRestaurant(
        "Breakfast at Tims",
        "Tim Hortons (1234 street south, Hamilton ON)",
        "breakfast",
        "8",
        "200",
        meal),
    FrequentRestaurant(
        "Breakfast at Tims",
        "Tim Hortons (1234 street south, Hamilton ON)",
        "breakfast",
        "8",
        "200",
        meal)
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
    final mealPreviewList = restro.mealPreview;
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
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.00),
                child: Row(children: <Widget>[
                  Text(
                    "Meal Preview",
                    style: TextStyle(
                        color: kUnselectedButtonColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.00),
                  ),
                  Spacer(),
                ]),
              ),
              Table(
                columnWidths: {
                  0: FlexColumnWidth(5),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(1),
                },
                border: TableBorder(
                    verticalInside:
                        BorderSide(color: kUnselectedButtonColor, width: 0.5)),
                children: [
                  TableRow(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                      child: Text(
                        "item name",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "DC(g)",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "C(g)",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "F(g)",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Divider(
                      color: kUnselectedButtonColor,
                    ),
                    Divider(
                      color: kUnselectedButtonColor,
                    ),
                    Divider(
                      color: kUnselectedButtonColor,
                    ),
                    Divider(
                      color: kUnselectedButtonColor,
                    ),
                  ]),
                  for (var item in mealPreviewList)
                    TableRow(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                        child: Text(item.name,
                            style: TextStyle(
                                color: Colors.white, fontSize: kFontSmall)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                        child: Text(
                          item.dc,
                          style: TextStyle(
                              color: Colors.white, fontSize: kFontSmall),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                        child: Text(
                          item.c,
                          style: TextStyle(
                              color: Colors.white, fontSize: kFontSmall),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                        child: Text(
                          item.f,
                          style: TextStyle(
                              color: Colors.white, fontSize: kFontSmall),
                        ),
                      ),
                    ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
