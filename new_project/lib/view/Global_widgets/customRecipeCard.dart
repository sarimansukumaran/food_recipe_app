import 'package:flutter/material.dart';
import 'package:new_project/utilis/constants/color_contants.dart';

class CustomRecipeCard extends StatelessWidget {
  CustomRecipeCard({
    required this.imageurl,
    required this.ratings,
    required this.recipeName,
    required this.duration,
    super.key,
  });
  String imageurl;
  String ratings;
  String recipeName;
  String duration;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(children: [
          Container(
            height: 200,
            width: 335,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(imageurl), fit: BoxFit.cover)),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: ColorContants.TEXT_COLOR,
                  size: 12,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  ratings,
                  style: TextStyle(
                    color: ColorContants.TEXT_COLOR,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 10,
              right: 10,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: ColorContants.TEXT_COLOR,
                child: Icon(
                  Icons.more_horiz,
                  color: ColorContants.PRIMARY_COLOR,
                ),
              )),
          Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 162,
                  child: Text(
                    recipeName,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: ColorContants.TEXT_COLOR),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Text(
                  duration,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: ColorContants.TEXT_COLOR),
                )
              ],
            ),
          )
        ]));
  }
}
