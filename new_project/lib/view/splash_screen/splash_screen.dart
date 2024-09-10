import 'package:flutter/material.dart';
import 'package:new_project/utilis/constants/color_contants.dart';
import 'package:new_project/view/onbody_screen/onbody_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnbodyScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: ColorContants.PRIMARY_COLOR,
        body: Center(
            child: Image.asset(height: 100, "assets/images/images.png")));
  }
}
