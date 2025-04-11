import 'package:flutter/material.dart';

class SavedCard extends StatelessWidget {
  final  String image;
  final String  title;
  final String subtitle;
  final String  time;
  const SavedCard({super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(image),
          // Replace with your image path
          fit: BoxFit.cover,

        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,

                  ),
                ),
                const SizedBox(height: 8),
                Row(
                    children: const [
                      Icon(Icons.timer,  size: 16),
                      SizedBox(width: 4),
                      Text("time", )]),
                Spacer(),
                Icon(Icons.bookmark_border, ),
              ],
            ),
          ),

          Positioned(
            top: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: const [
                  Icon(Icons.star, size: 14 ),
                  SizedBox(width: 4),
                  Text(
                    "4.0",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
