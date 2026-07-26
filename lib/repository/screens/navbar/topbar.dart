import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  TopBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      color: Color.fromRGBO(247, 203, 69, 1),
      child: SafeArea(
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
                      UIHelper.customText(
                        text: "Blinkit in",
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontweight: FontWeight.bold,
                        fontsize: 12,
                        fontfamily: "Bold",
                      ),
                      UIHelper.customText(
                        text: "16 minutes",
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontweight: FontWeight.bold,
                        fontsize: 20,
                        fontfamily: "Bold",
                      ),
                      Row(
                        children: [
                          UIHelper.customText(
                            text: "Home",
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontweight: FontWeight.bold,
                            fontsize: 12,
                            fontfamily: "bold",
                          ),
                          SizedBox(width: 5),
                          UIHelper.customText(
                            text: "-",
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontweight: FontWeight.bold,
                            fontsize: 12,
                            fontfamily: "bold",
                          ),
                          SizedBox(width: 6),
                          UIHelper.customText(
                            text: "Address",
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontweight: FontWeight.w500,
                            fontsize: 12,
                          ),
                          SizedBox(width: 11),
                          UIHelper.customImage(img: "arrow-down.png"),
                        ],
                      ),
                      SizedBox(height: 6),
                      UIHelper.customTextField(controller: searchController),
                    ],
                  ),
                ],
              ),
              Positioned(
                right: 10,
                top: 7,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 23,
                  child: UIHelper.customImage(img: "profile.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
