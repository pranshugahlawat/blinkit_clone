import 'package:blinkit_clone/repository/screens/navbar/topbar.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 241, 209, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 44),
                  UIHelper.customText(
                    text: "Print Store",
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontweight: FontWeight.bold,
                    fontsize: 32,
                    fontfamily: "bold",
                  ),
                  UIHelper.customText(
                    text: "Blinkit ensures secure prints at every stage",
                    color: Color.fromRGBO(156, 156, 156, 1),
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold",
                  ),
                  SizedBox(height: 54),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 190,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsGeometry.fromLTRB(
                                  5,
                                  16,
                                  0,
                                  7,
                                ),
                                child: UIHelper.customText(
                                  text: "Documents",
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontweight: FontWeight.bold,
                                  fontsize: 14,
                                  fontfamily: "bold",
                                ),
                              ),
                              Row(
                                children: [
                                  UIHelper.customImage(img: "diamond.png"),
                                  SizedBox(width: 9),
                                  UIHelper.customText(
                                    text: "Price starting at ₹3/page",
                                    color: Color.fromRGBO(156, 156, 156, 1),
                                    fontweight: FontWeight.w500,
                                    fontsize: 14,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  UIHelper.customImage(img: "diamond.png"),
                                  SizedBox(width: 9),
                                  UIHelper.customText(
                                    text: "Paper quality: 70 GSM",
                                    color: Color.fromRGBO(156, 156, 156, 1),
                                    fontweight: FontWeight.w500,
                                    fontsize: 14,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  UIHelper.customImage(img: "diamond.png"),
                                  SizedBox(width: 9),
                                  UIHelper.customText(
                                    text: "Single side prints",
                                    color: Color.fromRGBO(156, 156, 156, 1),
                                    fontweight: FontWeight.w500,
                                    fontsize: 14,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsGeometry.fromLTRB(
                                  5,
                                  20,
                                  0,
                                  0,
                                ),
                                child: SizedBox(
                                  width: 125,
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0XFF27AF34),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(5),
                                      ),
                                    ),
                                    child: UIHelper.customText(
                                      text: "Upload Files",
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontweight: FontWeight.bold,
                                      fontsize: 13,
                                      fontfamily: "bold",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 44),
                          UIHelper.customImage(img: "print_page.png"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
