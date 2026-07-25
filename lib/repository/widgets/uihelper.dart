import 'package:flutter/material.dart';

class UIHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
      ),
    );
  }

  static CustomTextField({required TextEditingController controller}) {
    return Container(
      height: 37,
      width: 410,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color(0XFFC5C5C5)),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: '''Search for "ice-cream"''',
          prefixIcon: Image.asset("assets/images/search.png"),
          suffixIcon: Image.asset("assets/images/mic.png"),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static CustomButton(VoidCallback callback) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0XFF27AF34)),
        borderRadius: BorderRadius.circular(4),
        color: Color(0XFF27AF34)
      ),
      child: Center(
        child: Text(
          "Add",
          style: TextStyle(fontSize: 8, color: Color(0XFFFFFFFF), fontWeight: FontWeight.w900),
        ),
      ),
    );
  }

  static itemWidgetWithHeading({required String heading,required List itemList, }){
    return SizedBox(
    width: double.infinity,
    child: Column(
    children: [
    Row(
    children: [
    SizedBox(width: 15),
    UIHelper.CustomText(
    text: heading,
    color: Color.fromRGBO(0, 0, 0, 1),
    fontweight: FontWeight.bold,
    fontsize: 14,
    fontfamily: "bold",
    ),
    ],
    ),
    SizedBox(
    height: 150,
    child: Expanded(
    child: ListView.builder(itemBuilder: (context, index) {
    return Column(
    spacing: 7,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Padding(
    padding: const EdgeInsets.only(right: 9),
    child: Container(
    height: 78,
    width: 71,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color.fromRGBO(217, 235, 235, 1),
    ),
    child: UIHelper.CustomImage(img: itemList[index]["img"].toString(),),
    ),
    ),
    UIHelper.CustomText(text: itemList[index]["text"].toString(), color: Color.fromRGBO(0, 0, 0, 1), fontweight: FontWeight.w500, fontsize: 10),

    ],
    );
    }, itemCount: itemList.length, scrollDirection: Axis.horizontal,padding: const EdgeInsets.fromLTRB(15,7,0,10),),
    ),
    ),

    ],),);
  }

  static itemWidget({required List itemList, }){
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 25,),
            SizedBox(
              height: 150,
              child: Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Column(
                    spacing: 7,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 9),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(217, 235, 235, 1),
                          ),
                          child: UIHelper.CustomImage(img: itemList[index]["img"].toString(),),
                        ),
                      ),
                      UIHelper.CustomText(text: itemList[index]["text"].toString(), color: Color.fromRGBO(0, 0, 0, 1), fontweight: FontWeight.w500, fontsize: 10),

                    ],
                  );
                }, itemCount: itemList.length, scrollDirection: Axis.horizontal,padding: const EdgeInsets.fromLTRB(15,7,0,10),),
              ),
            ),

          ],),),);
  }

  static itemAddWidget({required String img, required String title, required String price }){
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Stack(
      children: [
      UIHelper.CustomImage(img: img),
      Padding(
      padding: EdgeInsets.only(top: 95, left: 60),
      child: UIHelper.CustomButton(() {}),
      ),
      ],
      ),

      SizedBox(height: 10),
      UIHelper.CustomText(
      text: title,
      color: Color.fromRGBO(0, 0, 0, 1),
      fontweight: FontWeight.w500,
      fontsize: 8,
      ),
      SizedBox(height: 6),
      Row(
      children: [
      UIHelper.CustomImage(img: "timer.png"),
      UIHelper.CustomText(
      text: "16 Mins",
      color: Color.fromRGBO(156, 156, 156, 1),
      fontweight: FontWeight.w500,
      fontsize: 10,
      ),
      ],
      ),
      SizedBox(height: 5),
      UIHelper.CustomText(
      text: price,
      color: Color.fromRGBO(0, 0, 0, 1),
      fontweight: FontWeight.bold,
      fontsize: 15,
      fontfamily: "bold",
      ),
      ],
      ),
    );
}

  static SaleWidget({required List itemList}){
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: ListView.builder(itemBuilder: ((context, index) {
        return Padding(
          padding: EdgeInsets.fromLTRB(15, 16, 0, 28),
          child: Container(
            width: 120,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0XFFEAD3D3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UIHelper.CustomText(text: itemList[index]["text"], color: Color(0XFF000000), fontweight: FontWeight.w600, fontsize: 10),
                UIHelper.CustomImage(img: itemList[index]["img"]),
              ],
            ),
          ),
        );
      }), itemCount: itemList.length,scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.fromLTRB(15, 16, 0, 28),
      ),
    );
  }
}