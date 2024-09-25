import 'package:flutter/material.dart';
import 'package:new_project/utilis/constants/color_contants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.text,
    this.onPressedbtn,
    this.height,
    this.width,
    this.fontSize,
    super.key,
  });
  String text;
  void Function()? onPressedbtn;
  final double? height;
  final double? width;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressedbtn,
      child: Container(
        padding: EdgeInsets.all(8),
        height: height ?? 36,
        width: width ?? 77,
        decoration: BoxDecoration(
            color: ColorContants.PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: TextStyle(
              color: ColorContants.TEXT_COLOR,
              fontSize: fontSize ?? 14,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
