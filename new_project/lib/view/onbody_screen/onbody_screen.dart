import 'package:flutter/material.dart';
import 'package:new_project/utilis/constants/color_contants.dart';
import 'package:new_project/utilis/constants/image_constants.dart';

class OnbodyScreen extends StatelessWidget {
  const OnbodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackgroundImage(),
          _buildStartingTopText(),
          _buildGradientSection(),
        ],
      ),
    );
  }

  Padding _buildStartingTopText() {
    return Padding(
      padding: EdgeInsets.only(top: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: ColorContants.TEXT_COLOR,
            size: 12,
          ),
          Text(
            "60+",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: ColorContants.TEXT_COLOR),
          ),
          Text(
            "Premium recipes",
            style: TextStyle(
                color: ColorContants.TEXT_COLOR, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }

  Positioned _buildGradientSection() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 60),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Let's Cooking",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorContants.TEXT_COLOR,
                  fontWeight: FontWeight.w500,
                  fontSize: 56),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Find best recipes for cooking",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: ColorContants.TEXT_COLOR),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 17, horizontal: 32),
              decoration: BoxDecoration(
                  color: ColorContants.PRIMARY_COLOR,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Start cooking",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ColorContants.TEXT_COLOR),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: ColorContants.TEXT_COLOR,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageConstants.ONBORDING_SCREEN_BG))),
    );
  }
}
