import 'package:blinkit_clone/data/items.dart';
import 'package:blinkit_clone/repository/screens/navbar/topbar.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            Container(
              height: 270,
              width: double.infinity,
              color: const Color(0XFFF7CB45),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UIHelper.customText(
                    text: "Mega Sale",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 20,
                    fontfamily: "bold",
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 180,
                    width: double.infinity,
                    child: UIHelper.saleWidget(itemList: megaSale),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 5,),
                    UIHelper.itemAddWidget(
                      img: "candle_hs.png",
                      title: 'Golden Glass Wooden \nLid Candle (Oudh)',
                      price: "₹79",
                    ),
                    UIHelper.itemAddWidget(
                      img: "bikano_hs.png",
                      title: 'Royal Gulab Jamun \nBy Bikano',
                      price: "₹79",
                    ),
                    UIHelper.itemAddWidget(
                      img: "bhujia_hs.png",
                      title: 'Bikaji Bhujia',
                      price: "₹79",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
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
      ),
    );
  }
}
