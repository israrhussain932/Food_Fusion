import 'package:flutter/material.dart';
import 'package:foodfusion/features/authentication/screen/splash/widgets/custom_elevatedbutton.dart';
import 'package:foodfusion/utils/constants/colors.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  // States for each filter
  String selectedTime = 'Newest';
  int selectedRating = 4;
  String selectedCategory = 'Local Dish';

  final List<String> times = ['All', 'Newest', 'Oldest', 'Popularity'];
  final List<int> ratings = [5, 4, 3, 2, 1];
  final List<String> categories = [
    'All',
    'Cereal',
    'Vegetables',
    'Dinner',
    'Chinese',
    'Local Dish',
    'Fruit',
    'BreakFast',
    'Spanish',
    'Lunch'
  ];

  Widget buildOption(String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.primary : Colors.white,
          border: Border.all(color: AppColor.primary),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : AppColor.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget buildStarOption(int rating, bool isSelected) {
    return GestureDetector(
      onTap: () => setState(() => selectedRating = rating),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.primary : Colors.white,
          border: Border.all(color: AppColor.primary),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Text(
              rating.toString(),
              style: TextStyle(
                color: isSelected ? Colors.white :AppColor.primary,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.star, color: isSelected ? Colors.white :AppColor.primary, size: 16),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Center(child: Text("Filter Search", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
              SizedBox(height: 20),
              Text("Time", style: TextStyle(fontWeight: FontWeight.w600)),
              Wrap(
                children: times.map((time) {
                  return buildOption(time, selectedTime == time, () {
                    setState(() => selectedTime = time);
                  });
                }).toList(),
              ),
        
              SizedBox(height: 10),
              Text("Rate", style: TextStyle(fontWeight: FontWeight.w600)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: ratings.map((rate) {
                    return buildStarOption(rate, selectedRating == rate);
                  }).toList(),
                ),
              ),
        
              SizedBox(height: 10),
              Text("Category", style: TextStyle(fontWeight: FontWeight.w600)),
              Wrap(
                children: categories.map((category) {
                  return buildOption(category, selectedCategory == category, () {
                    setState(() => selectedCategory = category);
                  });
                }).toList(),
              ),

              custom_elevatedbutton(text: 'Filter',
                onPressed: (){},
                color: AppColor.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
