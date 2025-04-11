import 'package:flutter/material.dart';
import 'package:foodfusion/features/authentication/screen/Home/widgets/filter_screen.dart';
import 'package:foodfusion/features/authentication/screen/Home/widgets/recipe_card.dart';
import 'package:foodfusion/features/authentication/screen/Home/widgets/tomato_card.dart';
import 'package:foodfusion/utils/constants/colors.dart';
import 'package:foodfusion/utils/constants/images.dart';
import 'package:foodfusion/utils/constants/sizes.dart';
import 'package:foodfusion/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Texts.HomeAppbarTitle,
                  style: TextStyle(
                      fontSize: Sizes.lg, fontWeight: FontWeight.bold)),
              CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.person,
                  )),
            ],
          ),
          const Text(Texts.HomeAppbarSubTitle,
              style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 270,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search recipe',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 52,
                width: 48,
                decoration: BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                    onPressed: () {
                      Get.to(() => FilterScreen());
                    },
                    icon: Icon(
                      Icons.add_box_sharp,
                      color: Colors.white,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RecipeCard(
                          image: Images.recipeSecondImage,
                          title: 'Classic Greek \n    Salad',
                          time: 'Time',
                          durationTime: '15mins',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        RecipeCard(
                          image: Images.recipeFirstImage,
                          title: 'Crunchy Nut\n  Coleslaw',
                          time: 'Time',
                          durationTime: '10mins',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        RecipeCard(
                          image: Images.recipeSecondImage,
                          title: 'Classic Greek \n    Salad',
                          time: 'Time',
                          durationTime: '15mins',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "New Recipe",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        tomato_card(
                          title: 'Steak with tomato...',
                          circleAvatorImage: Images.profileImage,
                          ClipOvalImage: Images.SteakTomatoImage,
                          name: 'By Faizan Ali',
                          duration: '20mins',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        tomato_card(
                          title: 'Pilaf Sweet...',
                          circleAvatorImage: Images.profileImage,
                          ClipOvalImage: Images.SteakTomatoImage,
                          name: 'Adeela khans',
                          duration: '50mins',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
