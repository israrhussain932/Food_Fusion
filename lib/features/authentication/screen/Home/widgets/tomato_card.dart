
import 'package:flutter/material.dart';

class tomato_card extends StatelessWidget {
  final String title;
  final String circleAvatorImage;
  final String  ClipOvalImage;
  final String  name;
  final String  duration;
  const tomato_card({
    super.key,
    required this.title,
    required this.circleAvatorImage,
    required this.ClipOvalImage,
    required this.name,
    required this.duration,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: 270,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5),
                  // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(16)
          ),
          height: 120,
          margin: EdgeInsets.only(top: 40),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                Text("*****",style: TextStyle(color: Colors.yellow,fontSize: 26,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      radius: 17,
                      /// circle avatar image
                      backgroundImage: AssetImage(circleAvatorImage),
                    ),
                    Text(name),
                    SizedBox(width: 60,),
                    Icon(Icons.alarm),
                    Text(duration),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top:-1,
          bottom: 50,
          right: -10,
          /// clip oval image
          child: ClipOval(
            child: Image.asset(ClipOvalImage,),
          ),
        ),


      ],

    );
  }
}
