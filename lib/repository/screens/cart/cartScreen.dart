import 'package:blinkit_clone/repository/screens/navbar/topbar.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBar(),
          Column(
            children: [
              SizedBox(height: 10),
              UIHelper.customImage(img: "shopping-cart.png"),
              SizedBox(height: 18),
              UIHelper.customText(
                text: "Reordering will be easy",
                color: Color.fromRGBO(0, 0, 0, 1),
                fontweight: FontWeight.bold,
                fontsize: 16,
                fontfamily: "bold",
              ),
              UIHelper.customText(
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
                  UIHelper.customText(
                    text: "Bestsellers",
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontweight: FontWeight.bold,
                    fontsize: 16,
                    fontfamily: "bold",
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      UIHelper.itemAddWidget(
                        img: "amul_taaza.png",
                        title: "Amul Taaza Toned \nFresh Milk",
                        price: "₹27",
                      ),
                      SizedBox(width: 15),
                      UIHelper.itemAddWidget(
                        img: "potato.png",
                        title: "Potato(Aloo)",
                        price: "₹37",
                      ),
                      SizedBox(width: 15),
                      UIHelper.itemAddWidget(
                        img: "tomato.png",
                        title: "Hybrid Tomato",
                        price: "₹37",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
