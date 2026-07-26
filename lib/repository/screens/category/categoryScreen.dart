import 'package:blinkit_clone/repository/screens/navbar/topbar.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:blinkit_clone/data/items.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

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
