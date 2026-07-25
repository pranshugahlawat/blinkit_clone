import 'package:Blinkit_Clone/repository/screens/navbar/topbar.dart';
import 'package:Blinkit_Clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:Blinkit_Clone/data/items.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TopBar(),
                  Column(
                    children: [
                      SizedBox(height: 25),
                      UIHelper.itemWidgetWithHeading(
                        heading: "Grocery & Kitchen",
                        itemList: groceryKitchen,
                      ),
                      UIHelper.itemWidgetWithHeading(
                        heading: "Grocery & Kitchen",
                        itemList: groceryKitchen,
                      ),
                      UIHelper.itemWidgetWithHeading(
                        heading: "Snacks & Drinks",
                        itemList: snacksDrinks,
                      ),
                      UIHelper.itemWidgetWithHeading(
                        heading: "Household Essentials",
                        itemList: householdEssentials,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
