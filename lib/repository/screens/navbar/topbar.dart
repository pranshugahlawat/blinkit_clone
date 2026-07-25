import 'package:Blinkit_Clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget{
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      color: Color.fromRGBO(247, 203, 69, 1),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Stack(
          children: [
            Row(
              children: [
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 42),
                    UIHelper.CustomText(
                      text: "Blinkit in",
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontweight: FontWeight.bold,
                      fontsize: 12,
                      fontfamily: "Bold",
                    ),
                    UIHelper.CustomText(
                      text: "16 minutes",
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                      fontfamily: "Bold",
                    ),
                    Row(
                      children: [
                        UIHelper.CustomText(
                          text: "Home",
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontweight: FontWeight.bold,
                          fontsize: 12,
                          fontfamily: "bold",
                        ),
                        SizedBox(width: 5),
                        UIHelper.CustomText(
                          text: "-",
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontweight: FontWeight.bold,
                          fontsize: 12,
                          fontfamily: "bold",
                        ),
                        SizedBox(width: 6),
                        UIHelper.CustomText(
                          text: "Address",
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontweight: FontWeight.w500,
                          fontsize: 12,
                        ),
                        SizedBox(width: 11),
                        UIHelper.CustomImage(img: "arrow-down.png"),
                      ],
                    ),
                    SizedBox(height: 6),
                    UIHelper.CustomTextField(controller: searchController),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 30,
              top: 50,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: UIHelper.CustomImage(img: "profile.png"),
                radius: 23,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

