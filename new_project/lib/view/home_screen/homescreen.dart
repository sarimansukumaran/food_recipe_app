import 'package:flutter/material.dart';
import 'package:new_project/dummy_db.dart';
import 'package:new_project/utilis/constants/color_contants.dart';
import 'package:new_project/view/Global_widgets/custom_video_card.dart';
import 'package:new_project/view/recipe_detail_screen/recipe_detail_screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ColorContants.PRIMARY_COLOR,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _titleSection(),
              _trendingNowSection(),
              _popularCategorySection(),
              _recentRecipeSection(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 19),
                child: Row(
                  children: [
                    Text(
                      "Popular creators",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: ColorContants.PRIMARY_COLOR,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: ColorContants.PRIMARY_COLOR,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 187,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => PopularCreatorsCard(
                        creatorImage: DummyDb.popularCreatorList[index]
                            ["image"],
                        creatorName: DummyDb.popularCreatorList[index]
                            ["creatorname"]),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 12,
                        ),
                    itemCount: DummyDb.popularCreatorList.length),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _recentRecipeSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                "Recent recipe",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                    color: ColorContants.PRIMARY_COLOR,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: ColorContants.PRIMARY_COLOR,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: SizedBox(
            height: 191,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => RecentRecipeCard(
                      dishimage: DummyDb.recentRecipeList[index]["image"],
                      dishname: DummyDb.recentRecipeList[index]["dishname"],
                      username: DummyDb.recentRecipeList[index]["username"],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 16,
                    ),
                itemCount: DummyDb.recentRecipeList.length),
          ),
        )
      ],
    );
  }

  DefaultTabController _popularCategorySection() {
    return DefaultTabController(
      length: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Popular category",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: ColorContants.COLOR_MAINBLACK),
            ),
            TabBar(
                labelColor: ColorContants.TEXT_COLOR,
                unselectedLabelColor: ColorContants.PRIMARY_COLOR,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerHeight: 0,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicator: BoxDecoration(
                    color: ColorContants.PRIMARY_COLOR,
                    borderRadius: BorderRadius.circular(10)),
                tabs: [
                  Tab(
                    child: Text(
                      "Salad",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Breakfast",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Appetizer",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Noodle",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Lunch",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                  ),
                ]),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 231,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => PopularCategoryCard(
                        dishimage: DummyDb.popularCategoryList[index]
                            ["dishimage"],
                        dishname: DummyDb.popularCategoryList[index]
                            ["dishname"],
                        time: DummyDb.popularCategoryList[index]["time"],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: DummyDb.popularCategoryList.length),
            )
          ],
        ),
      ),
    );
  }

  Column _trendingNowSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
          child: Row(
            children: [
              Text(
                "Trending Now🔥",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                    color: ColorContants.PRIMARY_COLOR,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: ColorContants.PRIMARY_COLOR,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
            height: 254,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) => CustomVideoCard(
                      onCardTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RecipeDetailScreen(
                                      recipeeTitle: DummyDb
                                          .trendingnowList[index]["videoName"],
                                      image: DummyDb.trendingnowList[index]
                                          ["bgimage"],
                                      rating: DummyDb.trendingnowList[index]
                                          ["rating"],
                                      profilepic: DummyDb.trendingnowList[index]
                                          ["profilepic"],
                                      profilename:
                                          DummyDb.trendingnowList[index]
                                              ["profileName"],
                                    )));
                      },
                      rating: DummyDb.trendingnowList[index]["rating"],
                      bgimage: DummyDb.trendingnowList[index]["bgimage"],
                      vidtime: DummyDb.trendingnowList[index]["vidtime"],
                      videoName: DummyDb.trendingnowList[index]["videoName"],
                      profilepic: DummyDb.trendingnowList[index]["profilepic"],
                      profileName: DummyDb.trendingnowList[index]
                          ["profileName"],
                    ),
                separatorBuilder: (condext, index) => SizedBox(
                      width: 16,
                    ),
                itemCount: DummyDb.trendingnowList.length)),
      ],
    );
  }

  Column _titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 22),
          child: Text(
            "Find best recipes\nfor cooking",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "search recipes",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorContants.GREY_COLOR),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorContants.GREY_COLOR,
                  )),
            ))
      ],
    );
  }
}

class PopularCreatorsCard extends StatelessWidget {
  String creatorImage;
  String creatorName;
  PopularCreatorsCard({
    required this.creatorImage,
    required this.creatorName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 37.5,
            backgroundImage: NetworkImage(creatorImage),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            creatorName,
            style: TextStyle(
                color: ColorContants.COLOR_MAINBLACK,
                fontWeight: FontWeight.w600,
                fontSize: 12),
          )
        ],
      ),
    );
  }
}

class RecentRecipeCard extends StatelessWidget {
  String dishimage;
  String dishname;
  String username;
  RecentRecipeCard({
    required this.dishimage,
    required this.dishname,
    required this.username,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 124,
              width: 124,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(dishimage), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dishname,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: ColorContants.COLOR_MAINBLACK),
            ),
            Text(
              username,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                  color: ColorContants.GREY_COLOR),
            )
          ],
        ),
      ],
    );
  }
}

class PopularCategoryCard extends StatelessWidget {
  String dishimage;
  String dishname;
  String time;
  PopularCategoryCard({
    required this.dishimage,
    required this.dishname,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              height: 176,
              decoration: BoxDecoration(
                  color: ColorContants.GREY_COLOR.withOpacity(.3),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 66,
                  ),
                  Text(
                    dishname,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Time",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: ColorContants.GREY_COLOR),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        time,
                        style: TextStyle(
                            color: ColorContants.COLOR_MAINBLACK,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: ColorContants.TEXT_COLOR,
                        child: Icon(
                          Icons.bookmark_border,
                          color: ColorContants.COLOR_MAINBLACK,
                          size: 16,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )),
        Positioned(
            left: 0,
            right: 0,
            child: CircleAvatar(
              backgroundImage: NetworkImage(dishimage),
              radius: 55,
            ))
      ],
    );
  }
}
