
import 'package:flutter/material.dart';
import 'package:foodfusion/utils/constants/colors.dart';

class RecipeCard extends StatelessWidget {
  final String image;
  final String title;
  final String time;
   final String durationTime;
  const RecipeCard({
    super.key,
    required this.image,
    required this.title,
    required this.time,
    required this.durationTime,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: 180,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16)
          ),
          height: 220,
          margin: EdgeInsets.only(top: 40),
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,style: TextStyle(color: Colors.grey),),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 142),
                  child: Text(time),
                ),
                SizedBox(height: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(durationTime, style: TextStyle(color: Colors.grey)),
                    Icon(Icons.bookmark_border),
                  ],
                ),

              ],
            ),
          ),
        ),
        Positioned(
          top:0,
          bottom: 0,
          child: Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(image),
                )

              ],
            ),
          ),
        ),

      ],
    );
  }
}