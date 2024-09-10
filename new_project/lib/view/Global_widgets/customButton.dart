import 'package:flutter/material.dart';
import 'package:new_project/utilis/constants/color_contants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.text,
    this.onPressedbtn,
    super.key,
  });
  String text;
  void Function()? onPressedbtn;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressedbtn,
      child: Container(
        padding: EdgeInsets.all(8),
        height: 36,
        width: 77,
        decoration: BoxDecoration(
            color: ColorContants.PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: TextStyle(
              color: ColorContants.TEXT_COLOR,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
