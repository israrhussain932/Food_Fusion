import 'package:flutter/material.dart';
import 'package:foodfusion/features/authentication/screen/Home/notification_tappbar/all.dart';
import 'package:foodfusion/features/authentication/screen/Home/notification_tappbar/read.dart';
import 'package:foodfusion/features/authentication/screen/Home/notification_tappbar/unread.dart';
import 'package:foodfusion/utils/constants/colors.dart';
class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text('Notifications'),
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.teal,
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Read'),
              Tab(text: 'unread'),
            ],
              indicator: UnderlineTabIndicator(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 40,
                  color: AppColor.primary,
                  style: BorderStyle.solid,
                ),
                insets: EdgeInsets.symmetric(horizontal: 60),

              )
          ),
        ),
        body: TabBarView(
          children: [
            All(),
            Read(),
            Unread(),
          ],
        ),
      ),
    );
  }
}



