import 'package:flutter/material.dart';
import 'package:new_project/dummy_db.dart';
import 'package:new_project/utilis/constants/color_contants.dart';
import 'package:new_project/view/Global_widgets/customButton.dart';
import 'package:new_project/view/Global_widgets/ingredientsContainerCard.dart';

class RecipeDetailScreen extends StatelessWidget {
  RecipeDetailScreen(
      {required this.recipeeTitle,
      required this.image,
      required this.rating,
      required this.profilepic,
      required this.profilename,
      super.key});
  String recipeeTitle;
  String image;
  String rating;
  String profilepic;
  String profilename;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitleSection(),
              SizedBox(
                height: 25,
              ),
              _buildFirstImageSection(),
              _buildStarReviewSection(),
              _buildFollowSection(),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ingredients",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "(5 items)",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: ColorContants.GREY_COLOR),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => IngredientsContainerCard(
                        ingredientImage:
                            DummyDb.frenchToastIncredientList[index]["image"],
                        ingredientName: DummyDb.frenchToastIncredientList[index]
                            ["name"],
                        ingredientQantity:
                            DummyDb.frenchToastIncredientList[index]["qantity"],
                        //  haveArrow: true,
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 12,
                      ),
                  itemCount: DummyDb.frenchToastIncredientList.length)
            ],
          ),
        ),
      ),
    );
  }

  Text _buildTitleSection() {
    return Text(
      recipeeTitle,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24,
          color: ColorContants.COLOR_MAINBLACK),
      textAlign: TextAlign.left,
    );
  }

  Padding _buildStarReviewSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: ColorContants.ICON_YELLOW_COLOR,
            size: 16,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            "4,5",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            "(300 Reviews)",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: ColorContants.GREY_COLOR),
          )
        ],
      ),
    );
  }

  Container _buildFirstImageSection() {
    return Container(
      height: 223,
      // width: 335,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      child: Center(
        child: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.transparent.withOpacity(.3),
          child: Icon(
            Icons.play_arrow,
            color: ColorContants.TEXT_COLOR,
            size: 20,
          ),
        ),
      ),
    );
  }

  Row _buildFollowSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20.5,
              backgroundImage: NetworkImage(profilepic),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  profilename,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: ColorContants.PRIMARY_COLOR,
                      size: 16,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Bali,Indonasia",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: ColorContants.GREY_COLOR),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        CustomButton(text: "Follow")
      ],
    );
  }
}
