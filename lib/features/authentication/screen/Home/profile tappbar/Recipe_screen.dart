
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildRecipeCard(
            image: 'assets/Logo/istockphoto-1411901680-612x612.jpg',
            title: 'Traditional spare ribs baked',
            author: 'Chef John',
            time: '20 min',
            rating: '4.0',
          ),
          SizedBox(height: 15),
          buildRecipeCard(
            image: 'assets/Logo/mae-mu-H5Hj8QV2Tx4-unsplash 1.png',
            title: 'Spice roasted chicken with flavored rice',
            author: 'Mark Kelvin',
            time: '20 min',
            rating: '4.0',
          ),
          SizedBox(height: 15,),
          buildRecipeCard(
            image: 'assets/Logo/mae-mu-H5Hj8QV2Tx4-unsplash 1.png',
            title: 'Spice roasted chicken with flavored rice',
            author: 'Mark Kelvin',
            time: '20 min',
            rating: '4.0',
          ),
        ],
      ),
    );
  }
  Widget buildRecipeCard({
    required String image,
    required String title,
    required String author,
    required String time,
    required String rating,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            // Gradient overlay
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  Text("By $author", style: TextStyle(color: Colors.white70)),
                  Row(
                    children: [
                      Icon(Icons.timer, color: Colors.white70, size: 16),
                      SizedBox(width: 5),
                      Text(time, style: TextStyle(color: Colors.white70)),
                      Spacer(),
                      Icon(Icons.bookmark_border, color: Colors.white70),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 14),
                    SizedBox(width: 2),
                    Text(rating, style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
