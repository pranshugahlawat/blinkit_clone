import 'package:Blinkit_Clone/repository/screens/navbar/navbar.dart';
import 'package:Blinkit_Clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(255,255,255,100),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UIHelper.CustomImage(img: "onboarding_screen.png"),
            SizedBox(height: 30,),
            UIHelper.CustomImage(img: "Icon-192.png"),
            SizedBox(height: 20,),
            UIHelper.CustomText(
                text: "India's last minute app",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 20,
                fontfamily: "bold"),
            SizedBox(height: 20,),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFFFFFFFF)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 16,),
                    UIHelper.CustomText(
                        text: "Pranshu Gahlawat",
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontweight: FontWeight.w500,
                        fontsize: 15,
                    ),
                    SizedBox(height: 6,),
                    UIHelper.CustomText(
                        text: "9671X XXXXX",
                        color: Color.fromRGBO(156, 156, 156, 1),
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                        fontfamily: "bold"
                    ),
                    SizedBox(height: 12,),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Navbar()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(226, 55, 68, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(10)
                        )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          UIHelper.CustomText(
                              text: "Login with",
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                              fontfamily: "bold"
                          ),
                          SizedBox(width: 5,),
                          UIHelper.CustomImage(img: "logo_zomato.png")
                        ],
                      ),
                      ),
                    ),
                    SizedBox(height: 6,),
                    UIHelper.CustomText(
                        text: "Access your saved addresses from Zomato automatically!",
                        color: Color.fromRGBO(156, 156, 156, 1),
                        fontweight: FontWeight.w500,
                        fontsize: 10
                    ),
                    SizedBox(height: 20,),
                    UIHelper.CustomText(
                        text: "or login with phone number",
                        color: Color.fromRGBO(38, 146, 55, 1),
                        fontweight: FontWeight.w500,
                        fontsize: 14)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}