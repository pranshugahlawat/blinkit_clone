import 'package:blinkit_clone/repository/screens/cart/cartScreen.dart';
import 'package:blinkit_clone/repository/screens/category/categoryScreen.dart';
import 'package:blinkit_clone/repository/screens/home/homeScreen.dart';
import 'package:blinkit_clone/repository/screens/print/printScreen.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

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
            icon: UIHelper.customImage(img: "home_icon.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: UIHelper.customImage(img: "bag_icon.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: UIHelper.customImage(img: "category_icon.png"),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: UIHelper.customImage(img: "printer_icon.png"),
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
