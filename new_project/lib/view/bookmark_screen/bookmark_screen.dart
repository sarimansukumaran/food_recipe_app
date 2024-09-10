import 'package:flutter/material.dart';
import 'package:new_project/dummy_db.dart';
import 'package:new_project/utilis/constants/color_contants.dart';

import 'package:new_project/view/Global_widgets/custom_video_card.dart';
import 'package:new_project/view/recipe_detail_screen/recipe_detail_screen.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Saved Recipe",
            style: TextStyle(
                color: ColorContants.COLOR_MAINBLACK,
                fontWeight: FontWeight.w600,
                fontSize: 24),
          ),
          bottom: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ),
              ),
              Tab(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Recipe",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),

        // SizedBox(
        //   height: 20,
        // ),
        body: ListView.separated(
            //scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            itemBuilder: (condext, index) => CustomVideoCard(
                  onCardTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecipeDetailScreen(
                                  recipeeTitle: DummyDb.trendingnowList[index]
                                      ["videoName"],
                                  image: DummyDb.trendingnowList[index]
                                      ["bgimage"],
                                  rating: DummyDb.trendingnowList[index]
                                      ["rating"],
                                  profilepic: DummyDb.trendingnowList[index]
                                      ["profilepic"],
                                  profilename: DummyDb.trendingnowList[index]
                                      ["profileName"],
                                )));
                  },
                  width: double.infinity,
                  rating: DummyDb.trendingnowList[index]["rating"],
                  bgimage: DummyDb.trendingnowList[index]["bgimage"],
                  vidtime: DummyDb.trendingnowList[index]["vidtime"],
                  videoName: DummyDb.trendingnowList[index]["videoName"],
                  profilepic: DummyDb.trendingnowList[index]["profilepic"],
                  profileName: DummyDb.trendingnowList[index]["profileName"],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 16,
                ),
            itemCount: DummyDb.trendingnowList.length),
        //   ],
        // ),
        // ),
      ),
    );
  }
}
