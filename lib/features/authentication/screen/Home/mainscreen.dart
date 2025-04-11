import 'package:flutter/material.dart';
import 'package:foodfusion/features/authentication/screen/Home/bookmark_screen.dart';
import 'package:foodfusion/features/authentication/screen/Home/home_screen.dart';
import 'package:foodfusion/features/authentication/screen/Home/notification_screen.dart';
import 'package:foodfusion/features/authentication/screen/Home/profile_screen.dart';
import 'package:foodfusion/utils/constants/colors.dart';
/// Main Screen with Navigation Bar
class MainScreen extends StatefulWidget {
  @override
  NavbarScreen createState() => NavbarScreen();
}
class NavbarScreen extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    BookmarkScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _screens[_selectedIndex],
      /// Custom Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, 0),
            _buildNavItem(Icons.bookmark_border, 1),
            SizedBox(width: 40), // Space for Floating Action Button
            _buildNavItem(Icons.notifications_none, 2),
            _buildNavItem(Icons.person_outline, 3),
          ],
        ),
      ),
      /// Floating Action Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primary,
        onPressed: () {},
        shape: CircleBorder(),
        child: Icon(Icons.add,color: AppColor.accent,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  Widget _buildNavItem(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        color: _selectedIndex == index ? Colors.green :AppColor.buttonDisabled,
      ),
      onPressed: () => _onItemTapped(index),
    );
  }
}
