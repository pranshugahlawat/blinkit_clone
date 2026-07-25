import 'package:Blinkit_Clone/repository/screens/cart/cartScreen.dart';
import 'package:Blinkit_Clone/repository/screens/category/categoryScreen.dart';
import 'package:Blinkit_Clone/repository/screens/home/homeScreen.dart';
import 'package:Blinkit_Clone/repository/screens/print/printScreen.dart';
import 'package:Blinkit_Clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: UIHelper.CustomImage(img: "home_icon.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: UIHelper.CustomImage(img: "bag_icon.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: UIHelper.CustomImage(img: "category_icon.png"),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: UIHelper.CustomImage(img: "printer_icon.png"),
            label: "Print",
          ),
        ],
        //type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
