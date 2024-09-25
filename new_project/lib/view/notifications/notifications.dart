import 'package:flutter/material.dart';
import 'package:new_project/utilis/constants/color_contants.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        ),
        actions: [
          Icon(Icons.tune),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
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
                        "All",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Unread",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Read",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Today",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorContants.COLOR_MAINBLACK,
                    fontSize: 14),
              ),
              SizedBox(
                height: 12,
              ),
              NotificationMessageCard(
                titleText: "New Recipe!",
                messageText:
                    "Far far away, behind the word\nmountains, far from the countries.",
              ),
              SizedBox(
                height: 12,
              ),
              NotificationMessageCard(
                  titleText: "Don't foget to try our best recipe",
                  messageText:
                      "Far far away, behind the word\nmountains, far from the countries."),
              SizedBox(
                height: 30,
              ),
              Text(
                "Yesterday",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorContants.COLOR_MAINBLACK,
                    fontSize: 14),
              ),
              SizedBox(
                height: 12,
              ),
              NotificationMessageCard(
                titleText: "Don't foget to try our best recipe",
                messageText:
                    "Far far away, behind the word\nmountains, far from the countries.",
              ),
              SizedBox(
                height: 12,
              ),
              Center(
                child: Text("You are all set",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorContants.GREY_COLOR),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationMessageCard extends StatelessWidget {
  NotificationMessageCard({
    required this.titleText,
    required this.messageText,
    super.key,
  });
  String titleText;
  String messageText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      height: 82,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorContants.GREY_COLOR.withOpacity(.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorContants.LIGHT_GREEN),
            child: Icon(
              Icons.receipt_long,
              color: ColorContants.GREEN,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleText,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
              Text(
                messageText,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorContants.GREY_COLOR),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: ColorContants.PRIMARY_COLOR,
            radius: 3,
          )
        ],
      ),
    );
  }
}
