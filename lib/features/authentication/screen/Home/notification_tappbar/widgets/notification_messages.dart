
import 'package:flutter/material.dart';

class NotificationMessages extends StatelessWidget {
   final String title;
   final String subtitle;
   final String  time;
  const NotificationMessages({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 330,
      decoration: BoxDecoration(
          color: Color(0xFFCAE4DFFF),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: 140,
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.add_box_sharp))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
                subtitle),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text(time),
          )
        ],
      ),
    );
  }
}
