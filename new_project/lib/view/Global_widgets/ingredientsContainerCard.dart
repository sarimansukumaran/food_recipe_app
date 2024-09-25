import 'package:flutter/material.dart';
import 'package:new_project/utilis/constants/color_contants.dart';

class IngredientsContainerCard extends StatelessWidget {
  String ingredientImage;
  String ingredientName;
  String ingredientQantity;
  bool haveArrow;
  IngredientsContainerCard({
    required this.ingredientImage,
    required this.ingredientName,
    required this.ingredientQantity,
    this.haveArrow = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      height: 76,
      decoration: BoxDecoration(
          color: ColorContants.LIGHT_GREY,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(ingredientImage), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            ingredientName,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          Spacer(),
          Text(
            ingredientQantity,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: ColorContants.GREY_COLOR),
          ),
          haveArrow
              ? Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(Icons.arrow_forward_outlined),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
