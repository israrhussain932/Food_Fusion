import 'package:flutter/material.dart';
import 'package:foodfusion/features/authentication/screen/Home/notification_tappbar/widgets/notification_messages.dart';
import 'package:foodfusion/utils/constants/colors.dart';
import 'package:foodfusion/utils/constants/sizes.dart';

class Read extends StatelessWidget {
  const Read({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Today",
                style: TextStyle(
                    color: AppColor.black,
                    fontSize: Sizes.md,
                    fontWeight: FontWeight.w500),
              ),
              NotificationMessages(
                title: 'New Recipe Alert',
                subtitle:
                'Lorem ipsum incididunt ut labore et \ndolore, in voluptate velit esse cillum ',
                time: '1min ago',
              ),
              SizedBox(height: 10,),
              NotificationMessages(
                title: 'New Recipe Alert',
                subtitle:
                'Lorem ipsum incididunt ut labore et \ndolore, in voluptate velit esse cillum ',
                time: '7min ago',
              ),
              SizedBox(height: 10,),
              NotificationMessages(
                title: ' Saved Recipe Alert',
                subtitle:
                'Lorem ipsum incididunt ut labore et \ndolore, in voluptate velit esse cillum ',
                time: '10min ago',
              ),
              Text(
                "Yesterday",
                style: TextStyle(
                    color: AppColor.black,
                    fontSize: Sizes.md,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10,),
              NotificationMessages(
                title: 'New Recipe Alert',
                subtitle:
                'Lorem ipsum incididunt ut labore et \ndolore, in voluptate velit esse cillum ',
                time: '1 day ago',
              ),
            ],
          ),
        ),
      ),
    );
  }
}