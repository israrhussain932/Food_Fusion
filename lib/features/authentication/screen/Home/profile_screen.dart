import 'package:flutter/material.dart';
import 'package:foodfusion/features/authentication/screen/Home/profile%20tappbar/Recipe_screen.dart';
import 'package:foodfusion/features/authentication/screen/Home/profile%20tappbar/Tag.dart';
import 'package:foodfusion/features/authentication/screen/Home/profile%20tappbar/videos_screen.dart';
import 'package:foodfusion/utils/constants/colors.dart';
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Profile",
                  style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            // Avatar and Stats
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        'assets/Logo/WhatsApp Image 2025-04-09 at 20.09.28_45799645.jpg'),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildStat("Recipe", "4"),
                      buildStat("Followers", "2.5M"),
                      buildStat("Following", "259"),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            // Name and Bio
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text("Faizan",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text("Chef", style: TextStyle(color: Colors.grey[600])),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text("Private Chef🍲🍜", textAlign: TextAlign.center),
            ),
            SizedBox(height: 20),

            TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.teal,
              tabs: const [
                Tab(text: "Recipe"),
                Tab(text: "Videos"),
                Tab(text: "Tag"),
              ],
          indicator: UnderlineTabIndicator(
            borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 50,
                color: AppColor.primary,
                style: BorderStyle.solid,
                ),
           insets: EdgeInsets.symmetric(horizontal: 90),

           )
          ),

            Expanded(
              child: TabBarView(
                children: [
                  RecipeScreen(),
                  VideosScreen(),
                   Tag(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildStat(String label, String value) {
    return Column(
      children: [
        Text(value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text(label, style: TextStyle(color: Colors.grey)),
      ],
    );
  }


}


