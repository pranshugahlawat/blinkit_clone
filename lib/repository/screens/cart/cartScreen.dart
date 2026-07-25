import 'package:Blinkit_Clone/repository/screens/navbar/topbar.dart';
import 'package:Blinkit_Clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBar(),
          Column(
            children: [
              SizedBox(height: 10),
              UIHelper.CustomImage(img: "shopping-cart.png"),
              SizedBox(height: 18),
              UIHelper.CustomText(
                text: "Reordering will be easy",
                color: Color.fromRGBO(0, 0, 0, 1),
                fontweight: FontWeight.bold,
                fontsize: 16,
                fontfamily: "bold",
              ),
              UIHelper.CustomText(
                text:
                    "Items you order will show up here so you can buy\n them again easily.",
                color: Color.fromRGBO(0, 0, 0, 1),
                fontweight: FontWeight.w600,
                fontsize: 10,
              ),
              SizedBox(height: 35),
              Row(
                children: [
                  SizedBox(width: 15),
                  UIHelper.CustomText(
                    text: "Bestsellers",
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontweight: FontWeight.bold,
                    fontsize: 16,
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    UIHelper.itemAddWidget(img: "amul_taaza.png", title: "Amul Taaza Toned \nFresh Milk", price: "₹27",),
                    SizedBox(width: 15),
                    UIHelper.itemAddWidget(img: "potato.png", title: "Potato(Aloo)", price: "₹37",),
                    SizedBox(width: 15),
                    UIHelper.itemAddWidget(img: "tomato.png", title: "Hybrid Tomato", price: "₹37",),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
