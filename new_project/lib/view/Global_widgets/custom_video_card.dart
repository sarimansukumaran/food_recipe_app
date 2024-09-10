import 'package:flutter/material.dart';
import 'package:new_project/utilis/constants/color_contants.dart';

class CustomVideoCard extends StatelessWidget {
  double width;
  String rating;
  String bgimage;
  String vidtime;
  String videoName;
  String profilepic;
  String profileName;
  void Function()? onCardTap;
  CustomVideoCard({
    this.width = 280,
    required this.rating,
    required this.bgimage,
    required this.vidtime,
    required this.videoName,
    required this.profilepic,
    required this.profileName,
    this.onCardTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTap,
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.all(8),
                height: 180,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    image: DecorationImage(
                        image: NetworkImage(bgimage), fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: ColorContants.ICON_BG.withOpacity(.3),
                              borderRadius: BorderRadius.circular(8)),
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
                                rating,
                                style: TextStyle(
                                  color: ColorContants.TEXT_COLOR,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: ColorContants.TEXT_COLOR,
                          child: Icon(
                            Icons.bookmark_border_outlined,
                            color: ColorContants.ICON_COLOR,
                          ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: ColorContants.ICON_BG.withOpacity(.3),
                      child: Icon(
                        Icons.play_arrow,
                        color: ColorContants.TEXT_COLOR,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                            color: ColorContants.ICON_BG.withOpacity(.3),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          vidtime,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: ColorContants.TEXT_COLOR),
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  videoName,
                  style: TextStyle(
                      color: ColorContants.COLOR_MAINBLACK,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Icon(Icons.more_vert)
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(profilepic),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  profileName,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
