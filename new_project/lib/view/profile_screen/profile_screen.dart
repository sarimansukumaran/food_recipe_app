import 'package:flutter/material.dart';
import 'package:new_project/dummy_db.dart';
import 'package:new_project/utilis/constants/color_contants.dart';
import 'package:new_project/view/Global_widgets/customRecipeCard.dart';
import 'package:new_project/view/Global_widgets/custom_video_card.dart';
import 'package:new_project/view/recipe_detail_screen/recipe_detail_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(
              color: ColorContants.COLOR_MAINBLACK,
              fontWeight: FontWeight.w600,
              fontSize: 24),
        ),
        actions: [
          Icon(Icons.more_horiz, color: ColorContants.COLOR_MAINBLACK),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              _buildmyProfileDiscriptionSection(),
              TabBar(
                padding: EdgeInsets.symmetric(vertical: 20),
                labelColor: ColorContants.TEXT_COLOR,
                unselectedLabelColor: ColorContants.PRIMARY_COLOR,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerHeight: 0,
                indicator: BoxDecoration(
                    color: ColorContants.PRIMARY_COLOR,
                    borderRadius: BorderRadius.circular(10)),
                tabs: [
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Video",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Recipe",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  ListView.separated(
                      //scrollDirection: Axis.horizontal,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                      itemBuilder: (condext, index) => CustomVideoCard(
                            onCardTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RecipeDetailScreen(
                                            recipeeTitle:
                                                DummyDb.trendingnowList[index]
                                                    ["videoName"],
                                            image:
                                                DummyDb.trendingnowList[index]
                                                    ["bgimage"],
                                            rating:
                                                DummyDb.trendingnowList[index]
                                                    ["rating"],
                                            profilepic:
                                                DummyDb.trendingnowList[index]
                                                    ["profilepic"],
                                            profilename:
                                                DummyDb.trendingnowList[index]
                                                    ["profileName"],
                                          )));
                            },
                            width: double.infinity,
                            rating: DummyDb.trendingnowList[index]["rating"],
                            bgimage: DummyDb.trendingnowList[index]["bgimage"],
                            vidtime: DummyDb.trendingnowList[index]["vidtime"],
                            videoName: DummyDb.trendingnowList[index]
                                ["videoName"],
                            profilepic: DummyDb.trendingnowList[index]
                                ["profilepic"],
                            profileName: DummyDb.trendingnowList[index]
                                ["profileName"],
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 16,
                          ),
                      itemCount: DummyDb.trendingnowList.length),

                  //2nd tab
                  ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    itemBuilder: (context, index) => CustomRecipeCard(
                        imageurl: DummyDb.cudtomRecipeList[index]["image"],
                        ratings: DummyDb.cudtomRecipeList[index]["ratings"],
                        recipeName: DummyDb.cudtomRecipeList[index]["name"],
                        duration: DummyDb.cudtomRecipeList[index]["duration"]),
                    itemCount: DummyDb.cudtomRecipeList.length,
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildmyProfileDiscriptionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1036622/pexels-photo-1036622.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              radius: 50,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              height: 36,
              width: 107,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: ColorContants.PRIMARY_COLOR, width: 1)),
              child: Text(
                "Edit Profile",
                style: TextStyle(
                    color: ColorContants.PRIMARY_COLOR,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Alessandra Blair",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          "Hello world I’m Alessandra Blair, I’m from Italy 🇮🇹 I love cooking so much!",
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: ColorContants.GREY_COLOR),
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 20,
        ),
        _buildFollowersFollowingSection()
      ],
    );
  }

  Row _buildFollowersFollowingSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "Recipe",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorContants.GREY_COLOR),
            ),
            Text(
              "3",
              style: TextStyle(
                  color: ColorContants.COLOR_MAINBLACK,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            )
          ],
        ),
        Column(
          children: [
            Text(
              "Videos",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorContants.GREY_COLOR),
            ),
            Text(
              "13",
              style: TextStyle(
                  color: ColorContants.COLOR_MAINBLACK,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            )
          ],
        ),
        Column(
          children: [
            Text(
              "Followers",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorContants.GREY_COLOR),
            ),
            Text(
              "14k",
              style: TextStyle(
                  color: ColorContants.COLOR_MAINBLACK,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            )
          ],
        ),
        Column(
          children: [
            Text(
              "Following",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorContants.GREY_COLOR),
            ),
            Text(
              "120",
              style: TextStyle(
                  color: ColorContants.COLOR_MAINBLACK,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            )
          ],
        )
      ],
    );
  }
}
